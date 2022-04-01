cask 'zulu-jdk13' do

  if Hardware::CPU.intel?
    version '13.46.15,13.0.10'
    sha256 '108ab2def40e4f70885bb32a33dfa6801ac00d21db3cb5051aa62aa28114302a'

    url 'https://cdn.azul.com/zulu/bin/zulu13.46.15-ca-jdk13.0.10-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '13.46.15,13.0.10'
    sha256 '78d967aa00dcf6396042f3d917fc0a00179884fe7e98213704b783c3a2e05899'

    url 'https://cdn.azul.com/zulu/bin/zulu13.46.15-ca-jdk13.0.10-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 13'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 13.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.13'
end
