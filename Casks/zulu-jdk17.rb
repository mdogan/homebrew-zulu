cask 'zulu-jdk17' do

  on_intel do
    version '17.70.113,17.0.21.0.3'
    sha256 'd92de2e8518665ff020c4f3cea99507083f5a2d08f6284203fe0f2da755d0f1d'

    url 'https://cdn.azul.com/zulu/bin/zulu17.70.113-ca-jdk17.0.21.0.3-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '17.70.113,17.0.21.0.3'
    sha256 '03a14640b59e698970d3e5915bf7943831b5c16f2224844086695c733697d76b'

    url 'https://cdn.azul.com/zulu/bin/zulu17.70.113-ca-jdk17.0.21.0.3-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 17'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
