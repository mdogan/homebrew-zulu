cask 'zulu-jdk21' do

  on_intel do
    version '21.52.15,21.0.12'
    sha256 '194881a9ac4180a3ebaa5d453e63e70ddfb57f9659dc61772956ced8273ac4f3'

    url 'https://cdn.azul.com/zulu/bin/zulu21.52.15-ca-jdk21.0.12-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '21.52.15,21.0.12'
    sha256 '91dab57dfbcc354b960ea07f7e9541141f4e81b0242016c391906b185aecec0c'

    url 'https://cdn.azul.com/zulu/bin/zulu21.52.15-ca-jdk21.0.12-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 21'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
