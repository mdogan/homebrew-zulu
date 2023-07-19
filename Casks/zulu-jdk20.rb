cask 'zulu-jdk20' do

  if Hardware::CPU.intel?
    version '20.32.11,20.0.2'
    sha256 '78dc577888711f954d690eb5d41c5408dd02a45ae25782d36efc170df02a0ee9'

    url 'https://cdn.azul.com/zulu/bin/zulu20.32.11-ca-jdk20.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '20.32.11,20.0.2'
    sha256 '6db524f701c3a64ade65e83d21d34a832e39a8342650d4c1515f0a50cdc63ef0'

    url 'https://cdn.azul.com/zulu/bin/zulu20.32.11-ca-jdk20.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 20'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 20.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.20'
end
