cask 'zulu-jdk24' do

  on_intel do
    version '24.28.83,24.0.0'
    sha256 'aef172699ba2838d465babeeafe9da75797d72b723417b4f54dce8c74adeec29'

    url 'https://cdn.azul.com/zulu/bin/zulu24.28.83-ca-jdk24.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '24.28.83,24.0.0'
    sha256 'f49f97ab7fa4f49395866e95a65557f32e4659132d27b12d21187746af6609df'

    url 'https://cdn.azul.com/zulu/bin/zulu24.28.83-ca-jdk24.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 24'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 24.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.24'
end
