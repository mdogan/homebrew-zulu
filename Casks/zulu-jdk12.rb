cask 'zulu-jdk12' do

    version '12.3.11,12.0.2'
    sha256 '5b46f5a0ebc3bf9c98763a6ce173c9578db04ceadd352a7b25baeb59a8240bcb'

    url 'https://cdn.azul.com/zulu/bin/zulu12.3.11_2-ca-jdk12.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'


  name 'Azul Zulu® JDK 12'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Zulu 12.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.12'
end
