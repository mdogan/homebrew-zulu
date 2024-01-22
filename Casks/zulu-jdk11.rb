cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.70.15,11.0.22'
    sha256 'b834979f1a5ba0ce1379521d4383242796dfb9576c1013e017d8605e476c01e1'

    url 'https://cdn.azul.com/zulu/bin/zulu11.70.15-ca-jdk11.0.22-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.70.15,11.0.22'
    sha256 '7dc1eb63714ad56b14d56dc2c54cb05f9e3b4e36776e487be1bac0dbb7dab969'

    url 'https://cdn.azul.com/zulu/bin/zulu11.70.15-ca-jdk11.0.22-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
