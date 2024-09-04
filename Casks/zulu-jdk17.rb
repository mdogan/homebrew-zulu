cask 'zulu-jdk17' do

  on_intel do
    version '17.52.17,17.0.12'
    sha256 '695cf191aedfa6e159d7ed6825de66a6124af1886cbb4f3bb6d2478fce8e528c'

    url 'https://cdn.azul.com/zulu/bin/zulu17.52.17-ca-jdk17.0.12-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '17.52.17,17.0.12'
    sha256 '807ecb2a1cf69723ac03aaec2883dbe54d5537ae1c245c4de6d3d2ece56d29b5'

    url 'https://cdn.azul.com/zulu/bin/zulu17.52.17-ca-jdk17.0.12-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
