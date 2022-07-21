cask 'zulu-jdk7' do

    version '7.56.0.11,7.0.352'
    sha256 'f17990028acbafe8060424cd1a6e28296598c959f81a1f9bd34dba1d5b9696d7'

    url 'https://cdn.azul.com/zulu/bin/zulu7.56.0.11-ca-jdk7.0.352-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'

  name 'Azul Zulu® JDK 7'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 7.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.7'
end
