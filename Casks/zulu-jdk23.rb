cask "zulu-jdk23" do
  on_arm do
    version "23.32.11,23.0.2"
    sha256 "825084ccc10217136b2090a5b277cf693234cb7324d880a665ebcfb066f32a43"

    url "https://cdn.azul.com/zulu/bin/zulu23.32.11-ca-jdk23.0.2-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  end
  on_intel do
    version "23.32.11,23.0.2"
    sha256 "0b9e55f672e86b445aa162980fc47b696d14bfa30a7cd488afb85c3fec98646b"

    url "https://cdn.azul.com/zulu/bin/zulu23.32.11-ca-jdk23.0.2-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  end

  name "Azul Zulu® JDK 23"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"

  pkg "Double-Click to Install Azul Zulu JDK 23.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.23"
end
