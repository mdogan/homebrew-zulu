cask 'zulu-jdk8' do

  on_intel do
    version '8.94.0.17,8.0.492'
    sha256 '918f988d43f449c724e0f242721fe3bd0aaaa5cf8339e09687f8b4fe54a52c80'

    url 'https://cdn.azul.com/zulu/bin/zulu8.94.0.17-ca-jdk8.0.492-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '8.94.0.17,8.0.492'
    sha256 '7e4340603b036da8b98a60ee68351c985b14be1b803cb3d544e679ba9f5915e7'

    url 'https://cdn.azul.com/zulu/bin/zulu8.94.0.17-ca-jdk8.0.492-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 8'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
