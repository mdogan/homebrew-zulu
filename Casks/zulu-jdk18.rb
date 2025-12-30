cask "zulu-jdk18" do
  on_arm do
    version "18.32.13,18.0.2.1"
    sha256 "aa25a85a8a3e51b2a532753aaf1c8151f8af671d8885c4cc1e245cc2de523f6c"

    url "https://cdn.azul.com/zulu/bin/zulu18.32.13-ca-jdk18.0.2.1-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  end
  on_intel do
    version "18.32.13,18.0.2.1"
    sha256 "fdba26f51f1f8a82cb1e084bc11c65136fca5cb5f653146c8e575787ca9fab34"

    url "https://cdn.azul.com/zulu/bin/zulu18.32.13-ca-jdk18.0.2.1-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  end

  name "Azul Zulu® JDK 18"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"

  pkg "Double-Click to Install Azul Zulu JDK 18.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.18"
end
