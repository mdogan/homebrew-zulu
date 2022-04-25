cask 'zulu-jdk7' do

    version '7.54.0.13,7.0.342'
    sha256 '34a2063b1c5dc0c8efecb1289468f082c322353a5f41f25e0007139d4de27962'

    url 'https://cdn.azul.com/zulu/bin/zulu7.54.0.13-ca-jdk7.0.342-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'

  name 'Azul Zulu® JDK 7'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 7.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.7'
end
