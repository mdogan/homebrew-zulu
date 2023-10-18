cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.74.0.17,8.0.392'
    sha256 '843112f7543ea191c044b20f51ecdf7a3e17e3615b83e826d5b550820892228e'

    url 'https://cdn.azul.com/zulu/bin/zulu8.74.0.17-ca-jdk8.0.392-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.74.0.17,8.0.392'
    sha256 'aa4126185a8b7c2d2f1b923ae5db216c5cd2e58a4072f39fed0e3db04acee4f2'

    url 'https://cdn.azul.com/zulu/bin/zulu8.74.0.17-ca-jdk8.0.392-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
