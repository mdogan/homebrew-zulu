cask 'zulu-jdk21' do

  on_intel do
    version '21.42.19,21.0.7'
    sha256 'f228def4177675a78b4687b52651f4e09251b8da8c44f4dcc754c1c023abb64d'

    url 'https://cdn.azul.com/zulu/bin/zulu21.42.19-ca-jdk21.0.7-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '21.42.19,21.0.7'
    sha256 '27b304e85b0b7aabdecca3b9d265f4b4b83281065ecf020a160c8a5de325d1b5'

    url 'https://cdn.azul.com/zulu/bin/zulu21.42.19-ca-jdk21.0.7-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
