import static java.util.stream.Collectors.joining;
import static java.util.stream.Collectors.toCollection;
import static okio.Okio.buffer;
import static okio.Okio.sink;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import okhttp3.OkHttpClient;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

public final class Main {

  // Zulu respin versions.
  // They update the same bundle version after fixing some packaging issues.
  // Respin versions have a number suffix after an underscore: `_1`, `_2` etc.
  private static final Set<String> respinVersions = Set.of();

  public static void main(String... args) throws IOException {
    if (args.length != 1) {
      System.err.println("Usage: Main <repository-dir>");
      System.exit(1);
    }

    var repoDir = Paths.get(args[0]).toAbsolutePath().normalize();
    System.out.println("Repository dir: " + repoDir);

    var readmeFile = repoDir.resolve("README.md");
    var caskDir = repoDir.resolve("Casks");
    var workflowsDir = repoDir.resolve(".github/workflows");

    var existingJdkVersions = existingJdkVersions(caskDir);
    var newestExistingJdkVersion =
        existingJdkVersions.isEmpty() ? MINIMUM_JDK_VERSION - 1 : existingJdkVersions.last();

    Map<Integer, PackageSet> jdkPackages = loadJdks(newestExistingJdkVersion);
    if (jdkPackages.isEmpty()) {
      // Never overwrite the Casks and README with an empty JDK list.
      throw new IllegalStateException(
          "Azul metadata API returned no JDK packages. Not updating the Casks and README.");
    }

    for (var entry : jdkPackages.entrySet()) {
      int jdkVersion = entry.getKey();
      var x86Package = entry.getValue().x86;
      var armPackage = entry.getValue().arm;

      if (respinVersions.contains(x86Package.zuluVersion())) {
        System.err.println(
            "Skipping bundle because this is a respin version of an existing package => "
                + x86Package);
        continue;
      }

      try (var w = buffer(sink(caskFile(caskDir, jdkVersion)))) {
        w.writeUtf8("cask 'zulu-jdk" + jdkVersion + "' do\n\n");

        if (armPackage != null) {
          w.writeUtf8("  on_intel do\n");
        }

        w.writeUtf8("    version '" + x86Package.caskVersion() + "'\n");
        w.writeUtf8("    sha256 '" + x86Package.sha256_hash + "'\n\n");
        w.writeUtf8("    url '" + x86Package.download_url + "',\n");
        w.writeUtf8(
            "        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'\n\n");

        if (armPackage != null) {
          w.writeUtf8("  end\n");
          w.writeUtf8("  on_arm do\n");
          w.writeUtf8("    version '" + armPackage.caskVersion() + "'\n");
          w.writeUtf8("    sha256 '" + armPackage.sha256_hash + "'\n\n");
          w.writeUtf8("    url '" + armPackage.download_url + "',\n");
          w.writeUtf8(
              "        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'\n\n");
          w.writeUtf8("  end\n");
        }

        w.writeUtf8("\n  name 'Azul Zulu® JDK " + jdkVersion + "'");
        w.writeUtf8("\n  desc 'OpenJDK distribution from Azul'\n");
        w.writeUtf8("  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'\n\n");
        if (jdkVersion == 9 || jdkVersion == 10 || jdkVersion == 12 || jdkVersion == 14) {
          w.writeUtf8("  pkg 'Double-Click to Install Zulu " + jdkVersion + ".pkg'\n\n");
        } else {
          w.writeUtf8("  pkg 'Double-Click to Install Azul Zulu JDK " + jdkVersion + ".pkg'\n\n");
        }
        w.writeUtf8("  uninstall pkgutil: 'com.azulsystems.zulu." + jdkVersion + "'\n");
        w.writeUtf8("end\n");
      }

      var workflowFile = workflowsDir.resolve("jdk" + jdkVersion + ".yml");
      var workflow =
          WORKFLOW_TEMPLATE
              .replace("{VERSION}", String.valueOf(jdkVersion))
              .replace("{REUSABLE_WORKFLOW}", REUSABLE_WORKFLOW);
      Files.writeString(workflowFile, workflow);
    }

    var readmeText = Files.readString(readmeFile);
    var versionHeaderIndex = readmeText.indexOf(VERSION_HEADER);
    var readmeStart = readmeText.substring(0, versionHeaderIndex + VERSION_HEADER.length());
    try (var w = buffer(sink(readmeFile))) {
      w.writeUtf8(readmeStart);
      w.writeUtf8("| JDK | Cask Name | Version | Build Status |\n");
      w.writeUtf8("|--|--|--|--|\n");

      // JDK version -> Java version shown in the README, sorted by JDK version.
      var readmeVersions = new TreeMap<Integer, String>();
      jdkPackages.forEach(
          (jdkVersion, packages) -> readmeVersions.put(jdkVersion, packages.x86().javaVersion()));
      // Keep the rows of the existing casks that the Azul metadata API did not return.
      for (int jdkVersion : existingJdkVersions) {
        if (!readmeVersions.containsKey(jdkVersion)) {
          readmeVersions.put(jdkVersion, caskJavaVersion(caskFile(caskDir, jdkVersion)));
        }
      }

      for (var e : readmeVersions.entrySet()) {
        var jdkVersion = e.getKey();
        w.writeUtf8(
            "| OpenJDK "
                + jdkVersion
                + " | `zulu-jdk"
                + jdkVersion
                + "` | "
                + e.getValue()
                + " | [![JDK"
                + jdkVersion
                + "](https://github.com/mdogan/homebrew-zulu/actions/workflows/jdk"
                + jdkVersion
                + ".yml/badge.svg?branch=master&event=push)](https://github.com/mdogan/homebrew-zulu/actions/workflows/jdk"
                + jdkVersion
                + ".yml) |\n");
      }
      w.writeUtf8(
          "| Mission Control | `zulu-mc` | 9.1.0.25 | [![MC](https://github.com/mdogan/homebrew-zulu/actions/workflows/mc.yml/badge.svg?branch=master&event=push)](https://github.com/mdogan/homebrew-zulu/actions/workflows/mc.yml) |\n");
    }
  }

  /**
   * Loads the latest packages of each JDK version, starting from {@link #MINIMUM_JDK_VERSION}.
   *
   * <p>The first JDK version that has no package and is newer than {@code newestExistingJdkVersion}
   * ends the list. A JDK version up to {@code newestExistingJdkVersion} that has no package is
   * skipped, so its existing cask is kept as it is. The Azul metadata API can return an empty list
   * for an old JDK version, either for a short time or for good (JDK 7 since November 2026).
   */
  private static Map<Integer, PackageSet> loadJdks(int newestExistingJdkVersion)
      throws IOException {
    var jdkPackages = new LinkedHashMap<Integer, PackageSet>();
    OkHttpClient.Builder builder = new OkHttpClient.Builder();
    builder.connectTimeout(30, TimeUnit.SECONDS);
    builder.readTimeout(30, TimeUnit.SECONDS);
    var okhttp = builder.build();

    try {
      var retrofit =
          new Retrofit.Builder()
              .baseUrl("https://api.azul.com/metadata/v1/zulu/packages/")
              .client(okhttp)
              .addConverterFactory(MoshiConverterFactory.create())
              .build();
      var service = retrofit.create(AzulMetadataService.class);

      for (int jdkVersion = MINIMUM_JDK_VERSION; ; jdkVersion++) {
        var x86PackageDetails = service.getPackageDetails(jdkVersion, "x86");
        System.out.println(jdkVersion + " x86 " + x86PackageDetails);

        var armPackageDetails = service.getPackageDetails(jdkVersion, "arm");
        System.out.println(jdkVersion + " ARM " + armPackageDetails);

        if (x86PackageDetails == null) {
          if (armPackageDetails != null) {
            throw new IllegalStateException("JDK " + jdkVersion + " missing x86 arch");
          }
          if (jdkVersion > newestExistingJdkVersion) {
            break;
          }
          System.err.println(
              "JDK " + jdkVersion + " has no package in Azul metadata API, keeping its cask as is");
          continue;
        }

        jdkPackages.put(jdkVersion, new PackageSet(x86PackageDetails, armPackageDetails));
      }
    } finally {
      // Allow JVM to quickly exit by shutting down OkHttp resources.
      okhttp.dispatcher().executorService().shutdown();
      okhttp.connectionPool().evictAll();
    }
    return jdkPackages;
  }

  private static java.nio.file.Path caskFile(java.nio.file.Path caskDir, int jdkVersion) {
    return caskDir.resolve("zulu-jdk" + jdkVersion + ".rb");
  }

  /** Returns the JDK versions that already have a cask, such as 7 for `zulu-jdk7.rb`. */
  private static SortedSet<Integer> existingJdkVersions(java.nio.file.Path caskDir)
      throws IOException {
    try (var files = Files.list(caskDir)) {
      return files
          .map(file -> CASK_FILE_NAME.matcher(file.getFileName().toString()))
          .filter(Matcher::matches)
          .map(m -> Integer.parseInt(m.group(1)))
          .collect(toCollection(TreeSet::new));
    }
  }

  /** Returns the Java version of the first (x86) `version` line in a cask, such as `7.0.352`. */
  private static String caskJavaVersion(java.nio.file.Path caskFile) throws IOException {
    var m = CASK_VERSION.matcher(Files.readString(caskFile));
    if (!m.find()) {
      throw new IllegalStateException("No version found in " + caskFile);
    }
    return m.group(1);
  }

  public record Package(
      String package_uuid,
      String sha256_hash,
      String download_url,
      List<Integer> java_version,
      List<Integer> distro_version) {
    String caskVersion() {
      var zuluString = zuluVersion();
      var javaString = javaVersion();
      return zuluString + "," + javaString;
    }

    String javaVersion() {
      return java_version.stream().map(String::valueOf).collect(joining("."));
    }

    String zuluVersion() {
      var zuluString = distro_version.stream().map(String::valueOf).collect(joining("."));
      if (distro_version.size() > 3 && zuluString.endsWith(".0")) {
        zuluString = zuluString.substring(0, zuluString.length() - 2);
      }
      return zuluString;
    }
  }

  record PackageSet(Package x86, Package arm) {}

  public interface AzulMetadataService {
    @GET(
        "?availability_type=ca&os=macos&archive_type=dmg&java_package_type=jdk&javafx_bundled=false&release_status=ga&latest=true")
    Call<List<Package>> latestPackages(
        @Query("java_version") int version, @Query("arch") String architecture);

    @GET("{package_uuid}")
    Call<Package> packageDetails(@Path("package_uuid") String packageUUID);

    default Package getPackageDetails(int version, String architecture) throws IOException {
      var response = this.latestPackages(version, architecture).execute();
      if (!response.isSuccessful()) {
        throw new IOException(
            "Failed to load JDK "
                + version
                + " "
                + architecture
                + " package list: HTTP "
                + response.code()
                + " "
                + response.message());
      }

      var latestPackages = response.body();

      if (latestPackages == null || latestPackages.isEmpty()) return null;

      // Data are sorted, with the newest packages being returned first.
      var latestPackage = latestPackages.get(0);

      var packageDetailsResponse = this.packageDetails(latestPackage.package_uuid).execute();
      if (!packageDetailsResponse.isSuccessful()) {
        throw new IOException(
            "Failed to load package details for "
                + latestPackage.package_uuid
                + ": HTTP "
                + packageDetailsResponse.code()
                + " "
                + packageDetailsResponse.message());
      }
      return packageDetailsResponse.body();
    }
  }

  private static final int MINIMUM_JDK_VERSION = 7;
  private static final String VERSION_HEADER = "## Versions\n\n";
  private static final Pattern CASK_FILE_NAME = Pattern.compile("zulu-jdk(\\d+)\\.rb");
  // Matches `version '<zulu version>,<java version>'` and captures the Java version.
  private static final Pattern CASK_VERSION =
      Pattern.compile("^\\s*version '[^',]+,([^']+)'", Pattern.MULTILINE);
  private static final String REUSABLE_WORKFLOW = ".github/workflows/reusable-cask-checks.yml";
  private static final String WORKFLOW_TEMPLATE =
"""
name: JDK{VERSION}

on:
  push:
    branches:
      - master
    paths:
      - '{REUSABLE_WORKFLOW}'
      - 'Casks/zulu-jdk{VERSION}.rb'
  pull_request:
    branches:
      - master
    paths:
      - '{REUSABLE_WORKFLOW}'
      - 'Casks/zulu-jdk{VERSION}.rb'

jobs:
  check:
    uses: ./{REUSABLE_WORKFLOW}
    with:
      jdk-version: jdk{VERSION}
""";
}
