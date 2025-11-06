cask 'zulu-jdk9' do

    version '9.0.7.1,9.0.7'
    sha256 'ddc362256ce2a06a37993cbe1ae2c166191444c23875d10c38bef910d5b5e6ac'

    url 'https://cdn.azul.com/zulu/bin/zulu9.0.7.1-ca-jdk9.0.7-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'


  name 'Azul Zulu® JDK 9'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Zulu 9.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.9'
end
