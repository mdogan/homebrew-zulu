cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.76.0.17,8.0.402'
    sha256 '0829cc9137818b28cdff1a805f6cd7527fe806a59ef09640b3c2fb22852c886d'

    url 'https://cdn.azul.com/zulu/bin/zulu8.76.0.17-ca-jdk8.0.402-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.76.0.17,8.0.402'
    sha256 '8fbb9378a8900047fab8c9b6d988d562d5fb39dfb595bef4ba9746f3b41aa8f1'

    url 'https://cdn.azul.com/zulu/bin/zulu8.76.0.17-ca-jdk8.0.402-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
