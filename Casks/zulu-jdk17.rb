cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.40.19,17.0.6'
    sha256 'c9771fd3a0e34ad1019869b9bf7616146031f8d4d5f26222312bd24cf9908f46'

    url 'https://cdn.azul.com/zulu/bin/zulu17.40.19-ca-jdk17.0.6-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.40.19,17.0.6'
    sha256 '416e1d93bb9d5a03b7658c668743ffa4ec7825858f030fe6772301cb7ebaf5af'

    url 'https://cdn.azul.com/zulu/bin/zulu17.40.19-ca-jdk17.0.6-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
