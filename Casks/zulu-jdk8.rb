cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.66.0.15,8.0.352'
    sha256 'c33888fb98ffb54780d3e26f1d50cf375275258b723a0b4a6d43636bd538968f'

    url 'https://cdn.azul.com/zulu/bin/zulu8.66.0.15-ca-jdk8.0.352-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.66.0.15,8.0.352'
    sha256 'f2f8f183b66b6fb18f8703d9bb5a2865edd84010c4c1281c4589ef5766883084'

    url 'https://cdn.azul.com/zulu/bin/zulu8.66.0.15-ca-jdk8.0.352-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
