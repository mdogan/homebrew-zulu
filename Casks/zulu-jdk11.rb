cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.62.17,11.0.18'
    sha256 '09a89a76c7d0d17d292df704177a6787f61a83a9379d165c76aad1de6b2ade87'

    url 'https://cdn.azul.com/zulu/bin/zulu11.62.17-ca-jdk11.0.18-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.62.17,11.0.18'
    sha256 'a06e2c6e359ae2141d8bbfd331d811531a2126e3fd23e9cdee88b076f4f36e88'

    url 'https://cdn.azul.com/zulu/bin/zulu11.62.17-ca-jdk11.0.18-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
