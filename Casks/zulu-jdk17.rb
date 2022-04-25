cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.34.19,17.0.3'
    sha256 '275a6bd5719bfc740f2ec729f42c0e032e8887351f651a00ff7f254e7ab9c2ed'

    url 'https://cdn.azul.com/zulu/bin/zulu17.34.19-ca-jdk17.0.3-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.34.19,17.0.3'
    sha256 '100c4cd1325a3bf8e5731ff4ba625d04d0e460198b548626d711e48b9ad6fba9'

    url 'https://cdn.azul.com/zulu/bin/zulu17.34.19-ca-jdk17.0.3-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
