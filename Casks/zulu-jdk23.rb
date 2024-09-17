cask 'zulu-jdk23' do

  on_intel do
    version '23.28.85,23.0.0'
    sha256 '01a85fef022d0a87a4383844dc43fa93376e73080ddc2b4c1dbbe77c2615e920'

    url 'https://cdn.azul.com/zulu/bin/zulu23.28.85-ca-jdk23.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '23.28.85,23.0.0'
    sha256 'cb64c3c5e54893478a0657593a22edb978e1035900cdad714408a14fe3348228'

    url 'https://cdn.azul.com/zulu/bin/zulu23.28.85-ca-jdk23.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 23'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 23.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.23'
end
