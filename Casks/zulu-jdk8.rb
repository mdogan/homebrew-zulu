cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.72.0.17,8.0.382'
    sha256 '2a9b7c5b4221389f1c23776adbc2cec2f858df684639719e42f724a91a954daa'

    url 'https://cdn.azul.com/zulu/bin/zulu8.72.0.17-ca-jdk8.0.382-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.72.0.17,8.0.382'
    sha256 '71c487dd8dfe01d2e8a332f97a9e3f8c77f3661a2618b15299fc451ff9195892'

    url 'https://cdn.azul.com/zulu/bin/zulu8.72.0.17-ca-jdk8.0.382-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
