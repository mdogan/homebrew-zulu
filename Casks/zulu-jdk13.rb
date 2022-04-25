cask 'zulu-jdk13' do

  if Hardware::CPU.intel?
    version '13.48.19,13.0.11'
    sha256 '6effb3541553d665985a054daae4e17e4fa29fdeb3176b84cfd9070fce57cc8a'

    url 'https://cdn.azul.com/zulu/bin/zulu13.48.19-ca-jdk13.0.11-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '13.48.19,13.0.11'
    sha256 '4873d3812f53f5f70d3664d7271b3071a83774a526421ac43ba5c150deb7783d'

    url 'https://cdn.azul.com/zulu/bin/zulu13.48.19-ca-jdk13.0.11-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 13'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 13.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.13'
end
