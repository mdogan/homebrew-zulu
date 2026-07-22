cask 'zulu-jdk17' do

  on_intel do
    version '17.68.17,17.0.20'
    sha256 'd44a85a198a99b8b25d3e695606af4570feb258b74e853bab3c03fb55a76abac'

    url 'https://cdn.azul.com/zulu/bin/zulu17.68.17-ca-jdk17.0.20-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '17.68.17,17.0.20'
    sha256 'aaa999a63ade295861da557588888756947a95ecc7a30f10f93c359970924772'

    url 'https://cdn.azul.com/zulu/bin/zulu17.68.17-ca-jdk17.0.20-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 17'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
