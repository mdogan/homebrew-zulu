cask 'zulu-jdk8' do

  on_intel do
    version '8.82.0.21,8.0.432'
    sha256 'f0416768b80e570e8e9e6dc6e1042f36632a33f3052c089586b55d09f59da515'

    url 'https://cdn.azul.com/zulu/bin/zulu8.82.0.21-ca-jdk8.0.432-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '8.82.0.21,8.0.432'
    sha256 'c7a5a7aa2270a5538b9a6e646b34b7df2197b15d7c0f754cbe176ffe92576e12'

    url 'https://cdn.azul.com/zulu/bin/zulu8.82.0.21-ca-jdk8.0.432-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
