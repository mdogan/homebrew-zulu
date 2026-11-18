cask 'zulu-jdk8' do

  on_intel do
    version '8.98.0.201,8.0.514'
    sha256 '421e68ac7da6e5b52dd2100d81a4938f8fe185353351ca487d6e27896eb5ebab'

    url 'https://cdn.azul.com/zulu/bin/zulu8.98.0.201-ca-jdk8.0.514-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '8.98.0.201,8.0.514'
    sha256 'c0454a505065df4f3a13a66402bf07263813cd29009483b571fbb4a9a1d640c9'

    url 'https://cdn.azul.com/zulu/bin/zulu8.98.0.201-ca-jdk8.0.514-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 8'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
