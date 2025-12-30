cask "zulu-jdk17" do
  on_arm do
    version "17.62.17,17.0.17"
    sha256 "02dbfc04bb4ded7ee1209cf2586c1962feed92508cbc158e352fdb659c408766"

    url "https://cdn.azul.com/zulu/bin/zulu17.62.17-ca-jdk17.0.17-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  end
  on_intel do
    version "17.62.17,17.0.17"
    sha256 "24928f3c572c3cb2bcb5edb09d1f2b29e124a9cf04af9ea6d138ffd47f822341"

    url "https://cdn.azul.com/zulu/bin/zulu17.62.17-ca-jdk17.0.17-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  end

  name "Azul Zulu® JDK 17"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"

  pkg "Double-Click to Install Azul Zulu JDK 17.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.17"
end
