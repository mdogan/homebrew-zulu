cask 'zulu-jdk17' do

  on_intel do
    version '17.68.203,17.0.20.1'
    sha256 '1a04ba8923c83c9c82888cb40ac2c776e4ae2a02e970dbe941babf73bfe85947'

    url 'https://cdn.azul.com/zulu/bin/zulu17.68.203-ca-jdk17.0.20.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '17.68.203,17.0.20.1'
    sha256 '547a972ffd7bb0a51373548c66c9fcb38c199f0381bf2535a15df20ad1115bdb'

    url 'https://cdn.azul.com/zulu/bin/zulu17.68.203-ca-jdk17.0.20.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 17'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
