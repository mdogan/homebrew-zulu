cask 'zulu-jdk11' do

  on_intel do
    version '11.84.17,11.0.29'
    sha256 '8de845d2eb77b85fa8795764f9a9d23d1effb880c12c023c0048a309c0d41367'

    url 'https://cdn.azul.com/zulu/bin/zulu11.84.17-ca-jdk11.0.29-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '11.84.17,11.0.29'
    sha256 '1986d4633a15dee940bc611fbea20daace4dfc9ba60c940dfd5673c4b01a1ea5'

    url 'https://cdn.azul.com/zulu/bin/zulu11.84.17-ca-jdk11.0.29-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 11'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
