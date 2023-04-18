cask 'zulu-jdk20' do

  if Hardware::CPU.intel?
    version '20.30.11,20.0.1'
    sha256 '16322d4efd15adf1787a0ef0ddef5dc00382db72c57ad9bc6c2940debce7971b'

    url 'https://cdn.azul.com/zulu/bin/zulu20.30.11-ca-jdk20.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '20.30.11,20.0.1'
    sha256 'f712f5b7b042b0f3b15a3905f1f08e1a5580521329f346d18612efed1b3375eb'

    url 'https://cdn.azul.com/zulu/bin/zulu20.30.11-ca-jdk20.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 20'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 20.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.20'
end
