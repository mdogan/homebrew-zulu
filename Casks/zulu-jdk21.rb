cask 'zulu-jdk21' do

  on_intel do
    version '21.52.203,21.0.12.1'
    sha256 'a9c513deaa7b810f71e786ffcb040043695fb3dc03866834889218d38bc18ac6'

    url 'https://cdn.azul.com/zulu/bin/zulu21.52.203-ca-jdk21.0.12.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '21.52.203,21.0.12.1'
    sha256 '3490a57308781fc8f4d8c35cedb9cc3407e87ce0c9f5a2c001574d2f89584321'

    url 'https://cdn.azul.com/zulu/bin/zulu21.52.203-ca-jdk21.0.12.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 21'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
