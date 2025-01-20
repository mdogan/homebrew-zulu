cask 'zulu-jdk20' do

  on_intel do
    version '20.32.11,20.0.2'
    sha256 '6f02981801832230edd0a0091b8de10873d3271cd7cc4d7a9ed439b046fa4b1f'

    url 'https://cdn.azul.com/zulu/bin/zulu20.32.11_1-ca-jdk20.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '20.32.11,20.0.2'
    sha256 'c5c196a0a25eca25a22edee325ff8ee2cd96aa9bfdee0ca3554dfbfd31dba8df'

    url 'https://cdn.azul.com/zulu/bin/zulu20.32.11_1-ca-jdk20.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 20'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 20.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.20'
end
