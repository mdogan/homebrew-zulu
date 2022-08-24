cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.58.23,11.0.16.1'
    sha256 '51db0cbdd3c7573fa36b8ceadc5cb43ccbe1ca2ae9b5e8f9a6cb468a2ffbcec4'

    url 'https://cdn.azul.com/zulu/bin/zulu11.58.23-ca-jdk11.0.16.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.58.23,11.0.16.1'
    sha256 '12aab5271707b642b1ad7e1d4c371791852fe4a1c485be641c140edf68e62edb'

    url 'https://cdn.azul.com/zulu/bin/zulu11.58.23-ca-jdk11.0.16.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
