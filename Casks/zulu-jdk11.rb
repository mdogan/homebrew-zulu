cask 'zulu-jdk11' do

  on_intel do
    version '11.76.21,11.0.25'
    sha256 'f3f1d72338b4ad7f73827ffaf9743980f2b9fc3354cab57cce9c768c37b6e50e'

    url 'https://cdn.azul.com/zulu/bin/zulu11.76.21-ca-jdk11.0.25-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '11.76.21,11.0.25'
    sha256 '771a0ae51b9521e7f1cf7e00bf34080632eb7331ed145c618c4b36b6f41c7040'

    url 'https://cdn.azul.com/zulu/bin/zulu11.76.21-ca-jdk11.0.25-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
