cask 'zulu-jdk13' do

  if Hardware::CPU.intel?
    version '13.50.15,13.0.12'
    sha256 'c69dfddd23342c893af78a4d4298ee330fd6bcae6256913bdebbd1ba7438814a'

    url 'https://cdn.azul.com/zulu/bin/zulu13.50.15-ca-jdk13.0.12-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '13.50.15,13.0.12'
    sha256 '9a8bf5f71097cc4b51285bb6f6ea909697573767306852c4cb91dcf4ceea6c3d'

    url 'https://cdn.azul.com/zulu/bin/zulu13.50.15-ca-jdk13.0.12-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 13'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 13.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.13'
end
