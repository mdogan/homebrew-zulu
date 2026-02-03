cask 'zulu-jdk25' do

  on_intel do
    version '25.32.21,25.0.2'
    sha256 '79cbd671e1b025d28bb53bc30fe52d10aead5679956d6c665679773edcc1c82e'

    url 'https://cdn.azul.com/zulu/bin/zulu25.32.21-ca-jdk25.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '25.32.21,25.0.2'
    sha256 'bced68e1016979748ef96be3f7e93959079037bcdac9fe6d32a9233f057cbb00'

    url 'https://cdn.azul.com/zulu/bin/zulu25.32.21-ca-jdk25.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 25'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
