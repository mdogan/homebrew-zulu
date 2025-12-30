cask "zulu-jdk10" do
  version "10.3.5,10.0.2"
  sha256 "dfc5a9cae3fbfb45d565bcd067829b7273704c976ff00a63794c9f9742fe4f76"

  url "https://cdn.azul.com/zulu/bin/zulu10.3.5-ca-jdk10.0.2-macosx_x64.dmg",
      referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  name "Azul Zulu® JDK 10"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"

  pkg "Double-Click to Install Zulu 10.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.10"
end
