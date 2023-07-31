cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.66.15,11.0.20'
    sha256 'c9f010d6540e4cb7ca1b227b15a46d1cb309efd707b196d9e7d1d7dd34bbd991'

    url 'https://cdn.azul.com/zulu/bin/zulu11.66.15-ca-jdk11.0.20-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.66.15,11.0.20'
    sha256 '18a4859a0cde247d26005d0b58f30f5524ceea9fceaac8fcbdc05b6625ca9e1b'

    url 'https://cdn.azul.com/zulu/bin/zulu11.66.15_1-ca-jdk11.0.20-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
