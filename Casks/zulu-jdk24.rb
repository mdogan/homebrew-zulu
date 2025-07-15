cask 'zulu-jdk24' do

  on_intel do
    version '24.32.13,24.0.2'
    sha256 '06ea24fa2d739e3444d0e00ed72ee3df40fe27dc16f9eb855667263c48d24ac9'

    url 'https://cdn.azul.com/zulu/bin/zulu24.32.13-ca-jdk24.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '24.32.13,24.0.2'
    sha256 '3c7c165ab906d77cb236a4a70565de27004718f7ba260765578fd26442f945f6'

    url 'https://cdn.azul.com/zulu/bin/zulu24.32.13-ca-jdk24.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 24'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 24.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.24'
end
