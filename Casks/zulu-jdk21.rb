cask 'zulu-jdk21' do

  on_intel do
    version '21.50.19,21.0.11'
    sha256 '3f36052db8910fbc939704209599d231d68075ba7e52796841dc13d76fcdf153'

    url 'https://cdn.azul.com/zulu/bin/zulu21.50.19-ca-jdk21.0.11-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '21.50.19,21.0.11'
    sha256 '21f5b195b625627ca1feeeac19d297f116e34113ed1844157594ebdd0561638d'

    url 'https://cdn.azul.com/zulu/bin/zulu21.50.19-ca-jdk21.0.11-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 21'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
