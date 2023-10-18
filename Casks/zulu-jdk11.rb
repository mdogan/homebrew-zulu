cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.68.17,11.0.21'
    sha256 '4bdb01ee04b804438e5c567a078da60e130e93ca2eec1739489876de2ea1a9b4'

    url 'https://cdn.azul.com/zulu/bin/zulu11.68.17-ca-jdk11.0.21-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.68.17,11.0.21'
    sha256 'db2d52eec86d62ad42fc6a22e3f165d99070d77a98e55f7c45c5d07ae2f194b6'

    url 'https://cdn.azul.com/zulu/bin/zulu11.68.17-ca-jdk11.0.21-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
