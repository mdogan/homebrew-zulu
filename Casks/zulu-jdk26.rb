cask 'zulu-jdk26' do

  on_intel do
    version '26.32.203,26.0.2.1'
    sha256 '8012d1b7467cfcba67b4ec06ec280f3c842a0894dceccc45b4b20d8965b525c6'

    url 'https://cdn.azul.com/zulu/bin/zulu26.32.203-ca-jdk26.0.2.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '26.32.203,26.0.2.1'
    sha256 'd510118457c62dc50601e4bcf6e9f55cd0a2605cab593e4203d5161daa3b8719'

    url 'https://cdn.azul.com/zulu/bin/zulu26.32.203-ca-jdk26.0.2.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 26'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 26.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.26'
end
