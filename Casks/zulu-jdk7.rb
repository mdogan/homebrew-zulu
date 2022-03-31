cask 'zulu-jdk7' do

    version '7.52.0.11,7.0.332'
    sha256 '3a832f89ac3b067a7a7ceb7eb471707675f877cd92069c98a0f8dc25d6916779'

    url 'https://cdn.azul.com/zulu/bin/zulu7.52.0.11-ca-jdk7.0.332-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

  name 'Azul Zulu® JDK 7'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 7.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.7'
end
