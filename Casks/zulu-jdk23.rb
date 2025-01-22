cask 'zulu-jdk23' do

  on_intel do
    version '23.30.13,23.0.1'
    sha256 'ef0137abfde45ddaaa0dcffc042ead30cc32742d0e03c1ae7815514e34fd2d7e'

    url 'https://cdn.azul.com/zulu/bin/zulu23.30.13-ca-jdk23.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '23.30.13,23.0.1'
    sha256 '53aa42b37637a7fc87d17325e3383a03f3ad87d51b4fccff168112be0aae0ef1'

    url 'https://cdn.azul.com/zulu/bin/zulu23.30.13-ca-jdk23.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 23'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 23.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.23'
end
