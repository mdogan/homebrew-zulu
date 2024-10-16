cask 'zulu-jdk17' do

  on_intel do
    version '17.54.21,17.0.13'
    sha256 'dd4a1e1968ce72c90a14b788983ed3966f518fb5087342e5df8c86b8cbdf07c2'

    url 'https://cdn.azul.com/zulu/bin/zulu17.54.21-ca-jdk17.0.13-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '17.54.21,17.0.13'
    sha256 '07755fa757eabea997ebcea1ce33db8a652f93f8332669c7f003e79a4b7763a0'

    url 'https://cdn.azul.com/zulu/bin/zulu17.54.21-ca-jdk17.0.13-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
