cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.64.0.15,8.0.342'
    sha256 '4647f2d0054469e94c0438d1aa33ba5581b05880c5ea17e023da1a4b04e8622a'

    url 'https://cdn.azul.com/zulu/bin/zulu8.64.0.15-ca-jdk8.0.342-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.64.0.15,8.0.342'
    sha256 '938b143ef34f246c09a0cd3f4754f2e31abb2aed2493177e2992ef40132b8ccd'

    url 'https://cdn.azul.com/zulu/bin/zulu8.64.0.15-ca-jdk8.0.342-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
