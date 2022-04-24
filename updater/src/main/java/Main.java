import okhttp3.OkHttpClient;
import retrofit2.Call;
import retrofit2.Retrofit;
import retrofit2.converter.moshi.MoshiConverterFactory;
import retrofit2.http.GET;
import retrofit2.http.Query;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import static java.util.stream.Collectors.joining;
import static okio.Okio.buffer;
import static okio.Okio.sink;

public final class Main {
  public static void main(String... args) throws IOException {
    var repoDir = Paths.get(args[0]).toAbsolutePath().normalize();
    System.out.println("Repository dir: " + repoDir);

    var readmeFile = repoDir.resolve("README.md");
    var caskDir = repoDir.resolve("Casks");
    var workflowsDir = repoDir.resolve(".github/workflows");

    Map<Integer, BundleSet> jdkBundles = loadJdks();
    for (var entry : jdkBundles.entrySet()) {
      int jdkVersion = entry.getKey();
      var x86Bundle = entry.getValue().x86;
      var armBundle = entry.getValue().arm;

      var caskFile = caskDir.resolve("zulu-jdk" + jdkVersion + ".rb");
      try (var w = buffer(sink(caskFile))) {
        w.writeUtf8("cask 'zulu-jdk" + jdkVersion + "' do\n\n");

        if (armBundle != null) {
          w.writeUtf8("  if Hardware::CPU.intel?\n");
        }

        w.writeUtf8("    version '" + x86Bundle.caskVersion() + "'\n");
        w.writeUtf8("    sha256 '" + x86Bundle.sha256_hash + "'\n\n");
        w.writeUtf8("    url '" + x86Bundle.url + "',\n");
        w.writeUtf8("        referer: 'https://www.azul.com/downloads/zulu-community/'\n\n");
        w.writeUtf8("    depends_on macos: '>= :mojave'\n");

        if (armBundle != null) {
          w.writeUtf8("  else\n");
          w.writeUtf8("    version '" + armBundle.caskVersion() + "'\n");
          w.writeUtf8("    sha256 '" + armBundle.sha256_hash + "'\n\n");
          w.writeUtf8("    url '" + armBundle.url + "',\n");
          w.writeUtf8("        referer: 'https://www.azul.com/downloads/zulu-community/'\n\n");
          w.writeUtf8("    depends_on macos: '>= :big_sur'\n");
          w.writeUtf8("  end\n");
        }

        w.writeUtf8("\n  name 'Azul Zulu® JDK " + jdkVersion + "'\n");
        w.writeUtf8("  homepage 'https://www.azul.com/downloads/zulu-community/'\n\n");
        if (jdkVersion == 9 || jdkVersion == 10 || jdkVersion == 12 || jdkVersion == 14) {
          w.writeUtf8("  pkg 'Double-Click to Install Zulu " + jdkVersion + ".pkg'\n\n");
        } else {
          w.writeUtf8("  pkg 'Double-Click to Install Azul Zulu JDK " + jdkVersion + ".pkg'\n\n");
        }
        w.writeUtf8("  uninstall pkgutil: 'com.azulsystems.zulu." + jdkVersion + "'\n");
        w.writeUtf8("end\n");
      }

      var workflowFile = workflowsDir.resolve("jdk" + jdkVersion + ".yml");
      var workflow = WORKFLOW_TEMPLATE.replace("{VERSION}", String.valueOf(jdkVersion));
      Files.writeString(workflowFile, workflow);
    }

    var readmeText = Files.readString(readmeFile);
    var versionHeaderIndex = readmeText.indexOf(VERSION_HEADER);
    var readmeStart = readmeText.substring(0, versionHeaderIndex + VERSION_HEADER.length());
    try (var w = buffer(sink(readmeFile))) {
      w.writeUtf8(readmeStart);
      w.writeUtf8("| JDK | Cask Name | Version | Build Status |\n");
      w.writeUtf8("|--|--|--|--|\n");

      var sortedVersions = jdkBundles.entrySet().stream()
        .map(e -> Map.entry(e.getKey(), e.getValue().x86().javaVersion()))
        .sorted(Entry.comparingByKey())
        .toList();
      for (var e : sortedVersions) {
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
                + "](https://github.com/mdogan/homebrew-zulu/workflows/JDK"
                + jdkVersion
                + "/badge.svg)](https://github.com/mdogan/homebrew-zulu/actions) |\n");
      }
      w.writeUtf8(
          "| Mission Control | `zulu-mc` | 8.1.1.51 | [![MC](https://github.com/mdogan/homebrew-zulu/workflows/MissionControl/badge.svg)](https://github.com/mdogan/homebrew-zulu/actions) |\n");
    }
  }

  private static Map<Integer, BundleSet> loadJdks() throws IOException {
    var okhttp = new OkHttpClient();
    var retrofit =
        new Retrofit.Builder()
            .baseUrl("https://api.azul.com/zulu/download/community/v1.0/")
            .client(okhttp)
            .addConverterFactory(MoshiConverterFactory.create())
            .build();
    var service = retrofit.create(ZuluDiscoveryService.class);

    var jdkBundles = new LinkedHashMap<Integer, BundleSet>();
    int jdkVersion = MINIMUM_JDK_VERSION;
    while (true) {
      var x86Response = service.latestBundle(jdkVersion, "x86").execute();
      var x86Bundle = x86Response.isSuccessful() ? x86Response.body() : null;
      System.out.println(jdkVersion + " x86 " + x86Bundle);

      var armResponse = service.latestBundle(jdkVersion, "arm").execute();
      var armBundle = armResponse.isSuccessful() ? armResponse.body() : null;
      System.out.println(jdkVersion + " ARM " + armBundle);

      if (x86Bundle == null) {
        if (armBundle == null) {
          break;
        }
        throw new IllegalStateException("JDK " + jdkVersion + " missing x86 arch");
      }

      jdkBundles.put(jdkVersion, new BundleSet(x86Bundle, armBundle));
      jdkVersion++;
    }

    // Allow JVM to quickly exit by shutting down OkHttp resources.
    okhttp.dispatcher().executorService().shutdown();
    okhttp.connectionPool().evictAll();

    return jdkBundles;
  }

  public record Bundle(
      String url, String sha256_hash, List<Integer> java_version, List<Integer> zulu_version) {
    String caskVersion() {
      var zuluString = zuluVersion();
      var javaString = javaVersion();
      return zuluString + "," + javaString;
    }

    String javaVersion() {
      return java_version.stream().map(String::valueOf).collect(joining("."));
    }

    String zuluVersion() {
      var zuluString = zulu_version.stream().map(String::valueOf).collect(joining("."));
      if (zulu_version.size() > 3 && zuluString.endsWith(".0")) {
        zuluString = zuluString.substring(0, zuluString.length() - 2);
      }
      return zuluString;
    }
  }

  record BundleSet(Bundle x86, Bundle arm) {}

  interface ZuluDiscoveryService {
    @GET("bundles/latest/?os=macos&ext=dmg&bundle_type=jdk&javafx=false&release_status=ga")
    Call<Bundle> latestBundle(
        @Query("java_version") int version, @Query("arch") String architecture);
  }

  private static final int MINIMUM_JDK_VERSION = 7;
  private static final String VERSION_HEADER = "## Versions\n\n";
  private static final String WORKFLOW_TEMPLATE =
      """
name: JDK{VERSION}

on:
  push:
    branches:
      - '**'
    paths:
      - 'Casks/zulu-jdk{VERSION}.rb'
  pull_request:
    branches:
      - master
    paths:
      - 'Casks/zulu-jdk{VERSION}.rb'

jobs:

  build:
    name: Build
    runs-on: macos-latest
    steps:

      - name: Check out
        uses: actions/checkout@v3

      - name: brew pull & reset & tap
        run: |
          brew update-reset "$(brew --repository)"
          brew update-reset "$(brew --repository homebrew/cask)"
          mkdir -p $(brew --repo)/Library/Taps/mdogan
          ln -s $GITHUB_WORKSPACE $(brew --repo)/Library/Taps/mdogan/homebrew-zulu
        env:
          HOMEBREW_COLOR: 1
          HOMEBREW_DEVELOPER: 1

      - name: install jdk{VERSION}
        run: brew install zulu-jdk{VERSION}
        env:
          HOMEBREW_COLOR: 1
          HOMEBREW_DEVELOPER: 1

      - name: uninstall jdk{VERSION}
        run: brew uninstall zulu-jdk{VERSION}
        env:
          HOMEBREW_COLOR: 1
          HOMEBREW_DEVELOPER: 1
""";
}
