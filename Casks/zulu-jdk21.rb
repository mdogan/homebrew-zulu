cask 'zulu-jdk21' do

  on_intel do
    version '21.40.17,21.0.6'
    sha256 '57adda54734c8b7132a4ff5e000bbc4ca3de1813590e18b53a2f8c415b208ad7'

    url 'https://cdn.azul.com/zulu/bin/zulu21.40.17-ca-jdk21.0.6-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '21.40.17,21.0.6'
    sha256 '314b607ad5a7954ec301dfc4a4c9227de04bdda60bdefbcd8037effb8b70e778'

    url 'https://cdn.azul.com/zulu/bin/zulu21.40.17-ca-jdk21.0.6-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
