cask 'zulu-jdk11' do

  on_intel do
    version '11.80.21,11.0.27'
    sha256 'c4dc895a0ddfc9991e7f291d966bbcf395d824cb5adf7e6acdc8bdf2d5150367'

    url 'https://cdn.azul.com/zulu/bin/zulu11.80.21-ca-jdk11.0.27-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '11.80.21,11.0.27'
    sha256 '775730f96a8593cfd62e1c33eb5ff2b1603a88b8e01d4fd17be04c335557bbfe'

    url 'https://cdn.azul.com/zulu/bin/zulu11.80.21-ca-jdk11.0.27-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
