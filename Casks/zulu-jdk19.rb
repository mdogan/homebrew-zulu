cask 'zulu-jdk19' do

  on_intel do
    version '19.32.13,19.0.2'
    sha256 '44a4fad67f32f7e7a886ffce0d7d523de30b552e8e81c1e25af5c2fdef762f66'

    url 'https://cdn.azul.com/zulu/bin/zulu19.32.13-ca-jdk19.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '19.32.13,19.0.2'
    sha256 '12f7ae5c2734962255ca0bb47ce71c0bae34720e6af1f84377250ff074bd907a'

    url 'https://cdn.azul.com/zulu/bin/zulu19.32.13-ca-jdk19.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 19'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 19.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.19'
end
