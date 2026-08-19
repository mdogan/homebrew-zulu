cask 'zulu-jdk25' do

  on_intel do
    version '25.36.205,25.0.4.1'
    sha256 '24c67cb3dc2b15cc006f13c15f2fada4c731cd16237e0266ce29e8cb0321a355'

    url 'https://cdn.azul.com/zulu/bin/zulu25.36.205-ca-jdk25.0.4.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '25.36.205,25.0.4.1'
    sha256 'dbf48fd4239edce78308386cf6b0d8209a9b09f8cd2c8f4c4ddc6e4fa9f79dda'

    url 'https://cdn.azul.com/zulu/bin/zulu25.36.205-ca-jdk25.0.4.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 25'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
