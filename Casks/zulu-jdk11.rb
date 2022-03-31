cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.54.25,11.0.14.1'
    sha256 '91b14eaf4f84b9caac2248d1a1e601ce6d7a50cb4d6f73ca64821141a22ab08b'

    url 'https://cdn.azul.com/zulu/bin/zulu11.54.25-ca-jdk11.0.14.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '11.54.25,11.0.14.1'
    sha256 '37c12c6b01f63eac5e2a4276f6dd73603a68d60d3ca4158cdb5e21a633dd1f97'

    url 'https://cdn.azul.com/zulu/bin/zulu11.54.25-ca-jdk11.0.14.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
