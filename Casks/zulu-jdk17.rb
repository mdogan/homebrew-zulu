cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.44.15,17.0.8'
    sha256 'd8e2e67b7a814062fb34309a6dc2b636f8d062714451ea76ccb56639d46fc1f6'

    url 'https://cdn.azul.com/zulu/bin/zulu17.44.15-ca-jdk17.0.8-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.44.15,17.0.8'
    sha256 '35d5bf045579a08110b91a8e37cda859cda021b1ef7dc4ef8a97b79a14147d60'

    url 'https://cdn.azul.com/zulu/bin/zulu17.44.15_1-ca-jdk17.0.8-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
