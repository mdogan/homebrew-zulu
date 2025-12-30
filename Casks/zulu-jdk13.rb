cask "zulu-jdk13" do
  on_arm do
    version "13.54.17,13.0.14"
    sha256 "b7b41f43f6a76f84d579e1d7b4abfd536928b6472e0ca3a8188f474235137b8e"

    url "https://cdn.azul.com/zulu/bin/zulu13.54.17-ca-jdk13.0.14-macosx_aarch64.dmg",
        referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  end
  on_intel do
    version "13.54.17,13.0.14"
    sha256 "e83a0fb55f3d736c88d9fff33ee6c4a11901507a932477df15bed220c84714c4"

    url "https://cdn.azul.com/zulu/bin/zulu13.54.17-ca-jdk13.0.14-macosx_x64.dmg",
        referer: "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"
  end

  name "Azul Zulu® JDK 13"
  desc "OpenJDK distribution from Azul"
  homepage "https://www.azul.com/downloads/?os=macos&package=jdk#zulu"

  pkg "Double-Click to Install Azul Zulu JDK 13.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.13"
end
