cask 'zulu-jdk12' do

    version '12.3.11,12.0.2'
    sha256 '181b65f9a88534b97784974bb17235dfcdc031e9ecd3f54dd4fb29464e143d5d'

    url 'https://cdn.azul.com/zulu/bin/zulu12.3.11_1-ca-jdk12.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

  name 'Azul Zulu® JDK 12'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Zulu 12.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.12'
end
