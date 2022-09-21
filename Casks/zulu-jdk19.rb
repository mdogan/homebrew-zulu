cask 'zulu-jdk19' do

  if Hardware::CPU.intel?
    version '19.28.81,19.0.0'
    sha256 'a8e4ac921b1ae4d8aa812ee09c40096e4c23b6bb3d6ee1f7744d80c97e700e79'

    url 'https://cdn.azul.com/zulu/bin/zulu19.28.81-ca-jdk19.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '19.28.81,19.0.0'
    sha256 '33c4abe65dbd08ee010994b6f577a53bb2de4c516f747e978b314d2b1a52e302'

    url 'https://cdn.azul.com/zulu/bin/zulu19.28.81-ca-jdk19.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 19'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 19.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.19'
end
