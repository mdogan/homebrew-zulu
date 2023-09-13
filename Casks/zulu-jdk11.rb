cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.66.19,11.0.20.1'
    sha256 'b7182c078f5ae70655952c45b42ce4edda3a7503994ba0f9b0cf6e6b774032a7'

    url 'https://cdn.azul.com/zulu/bin/zulu11.66.19-ca-jdk11.0.20.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.66.19,11.0.20.1'
    sha256 'c845c1427747fb50316d06d44bb9ebe98d8a8f68f4a60ed244ad78943816b724'

    url 'https://cdn.azul.com/zulu/bin/zulu11.66.19-ca-jdk11.0.20.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
