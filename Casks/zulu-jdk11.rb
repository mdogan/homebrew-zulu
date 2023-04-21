cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.64.19,11.0.19'
    sha256 'a848e751b17dc9dd197a0f568c7fc527cedf6b29c9c02579063c86b4fd243f47'

    url 'https://cdn.azul.com/zulu/bin/zulu11.64.19-ca-jdk11.0.19-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.64.19,11.0.19'
    sha256 'c751869da2e28ff71a9d60e9850e791a162200779f2fd640833dc850eb400f4a'

    url 'https://cdn.azul.com/zulu/bin/zulu11.64.19-ca-jdk11.0.19-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
