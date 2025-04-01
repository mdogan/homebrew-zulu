cask 'zulu-jdk17' do

  on_intel do
    version '17.56.15,17.0.14'
    sha256 '7d8ccc406d1c9f11881fd36955a52748c4f2d7eef905ba093c049b1ae2161229'

    url 'https://cdn.azul.com/zulu/bin/zulu17.56.15-ca-jdk17.0.14-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '17.56.15,17.0.14'
    sha256 '25568102f24a3acb3f45d8b7792aaf7b9697da7124260e029da012665cf977e4'

    url 'https://cdn.azul.com/zulu/bin/zulu17.56.15-ca-jdk17.0.14-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
