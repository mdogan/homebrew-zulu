cask 'zulu-jdk21' do

  on_intel do
    version '21.36.17,21.0.4'
    sha256 'cdb86b1000a4c9ad7d7e1559f50d96447c178b144768c4153fe5312755c5d513'

    url 'https://cdn.azul.com/zulu/bin/zulu21.36.17-ca-jdk21.0.4-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '21.36.17,21.0.4'
    sha256 '4f513a2b9d89910f21e8257e3ee54845551de86e3dc4da6d37e3aa5e4305027f'

    url 'https://cdn.azul.com/zulu/bin/zulu21.36.17-ca-jdk21.0.4-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
