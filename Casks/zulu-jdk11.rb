cask 'zulu-jdk11' do

  on_intel do
    version '11.88.17,11.0.31'
    sha256 '25681bf9e6dc6d0828fa08e97b4123232312e1be682372884f70f5ea9ff0346c'

    url 'https://cdn.azul.com/zulu/bin/zulu11.88.17-ca-jdk11.0.31-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '11.88.17,11.0.31'
    sha256 'ce2df30269d9b765931ed3e1002d348b71e18727a8fbe8eb5b888f6ae8631644'

    url 'https://cdn.azul.com/zulu/bin/zulu11.88.17-ca-jdk11.0.31-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 11'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
