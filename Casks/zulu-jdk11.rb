cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.60.19,11.0.17'
    sha256 '759cb0f0c5d831dbef4a0d8bfb1d1cbbed4b79a5d926e516ac1ca1d2f87be0b9'

    url 'https://cdn.azul.com/zulu/bin/zulu11.60.19-ca-jdk11.0.17-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.60.19,11.0.17'
    sha256 '5779475157b2eff69d24849822986cf1118a4a576f72d8da45a84eec8f351f3d'

    url 'https://cdn.azul.com/zulu/bin/zulu11.60.19-ca-jdk11.0.17-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
