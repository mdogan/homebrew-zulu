cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.44.53,17.0.8.1'
    sha256 '44001eb7b660ea5d768168b2746a9fab51c16822bcab9d968a341164e3f07f0d'

    url 'https://cdn.azul.com/zulu/bin/zulu17.44.53-ca-jdk17.0.8.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.44.53,17.0.8.1'
    sha256 '2467656096bc298e79be1526ea475e3e4cdd86ff17f9051b00194387993f54e8'

    url 'https://cdn.azul.com/zulu/bin/zulu17.44.53-ca-jdk17.0.8.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
