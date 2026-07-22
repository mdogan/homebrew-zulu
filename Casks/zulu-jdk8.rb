cask 'zulu-jdk8' do

  on_intel do
    version '8.96.0.19,8.0.502'
    sha256 'e4bdfae1d30853f04a6d9fa91298fee42b4cb66e2ab9d97c5817ab795ec84b4f'

    url 'https://cdn.azul.com/zulu/bin/zulu8.96.0.19-ca-jdk8.0.502-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '8.96.0.19,8.0.502'
    sha256 '7c3e968a24621be27ebba46441c8b8aea0caa0f6f0aa778b5947d77065894b43'

    url 'https://cdn.azul.com/zulu/bin/zulu8.96.0.19-ca-jdk8.0.502-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 8'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
