cask 'zulu-jdk12' do

    version '12.3.11,12.0.2'
    sha256 '5533220985805801ac1e3d44aeecef2f3ef36291b768415a298c0428d2ab4b89'

    url 'https://cdn.azul.com/zulu/bin/zulu12.3.11-ca-jdk12.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'

  name 'Azul Zulu® JDK 12'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Zulu 12.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.12'
end
