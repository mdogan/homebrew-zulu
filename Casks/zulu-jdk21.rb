cask 'zulu-jdk21' do

  on_intel do
    version '21.38.21,21.0.5'
    sha256 '9621e2c958e6dfe1244f2ed2b4e0e6d2f57a291eb91f45b1626015aa47a877b2'

    url 'https://cdn.azul.com/zulu/bin/zulu21.38.21-ca-jdk21.0.5-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '21.38.21,21.0.5'
    sha256 '78797b84fbae30b25c73fec4eb2a663f2c2b251c3ee170cc4976baadffdf0b5f'

    url 'https://cdn.azul.com/zulu/bin/zulu21.38.21-ca-jdk21.0.5-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
