cask 'zulu-jdk11' do

  on_intel do
    version '11.86.21,11.0.30'
    sha256 '8f13e5f297f579a7b383e5c16346b7434ec1c4fafcbc212de18b9c77334eefd0'

    url 'https://cdn.azul.com/zulu/bin/zulu11.86.21-ca-jdk11.0.30-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '11.86.21,11.0.30'
    sha256 'd90e86f7e24f7735c4e95935287b3da8be177a4157b37bae8cf6180e7f114780'

    url 'https://cdn.azul.com/zulu/bin/zulu11.86.21-ca-jdk11.0.30-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 11'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
