cask 'zulu-jdk11' do

  on_intel do
    version '11.90.205,11.0.32.1'
    sha256 'f00b6f5e6c7da38640a6278d66661c647b807607ac6af0f30c8c9c09a48f301a'

    url 'https://cdn.azul.com/zulu/bin/zulu11.90.205-ca-jdk11.0.32.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '11.90.205,11.0.32.1'
    sha256 '51e888e32fa05ce7a49433b5115830fe12cc93fc361d82cd62c879bf10d9f0cb'

    url 'https://cdn.azul.com/zulu/bin/zulu11.90.205-ca-jdk11.0.32.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 11'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
