cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.42.19,17.0.7'
    sha256 '87dfebd44d950711fa31e2130fdcf15ff1fdb96fd9dd51e247d703e670cc1319'

    url 'https://cdn.azul.com/zulu/bin/zulu17.42.19-ca-jdk17.0.7-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.42.19,17.0.7'
    sha256 '984face81db25020ace7f68fbf4d2c1ec950b46f34c1d40adc36983e545205c5'

    url 'https://cdn.azul.com/zulu/bin/zulu17.42.19-ca-jdk17.0.7-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
