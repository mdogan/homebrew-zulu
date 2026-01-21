cask 'zulu-jdk21' do

  on_intel do
    version '21.48.15,21.0.10'
    sha256 '40f2028ae9a12564c5063c1c5a19714d1e74b1240ea1e8c86feda85bd35fcf46'

    url 'https://cdn.azul.com/zulu/bin/zulu21.48.15-ca-jdk21.0.10-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '21.48.15,21.0.10'
    sha256 'cc376d59e42fb96651d8c03857a504fdcdec2bf83e24fc739ba74e63d4cff4cf'

    url 'https://cdn.azul.com/zulu/bin/zulu21.48.15-ca-jdk21.0.10-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 21'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
