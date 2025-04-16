cask 'zulu-jdk24' do

  on_intel do
    version '24.30.11,24.0.1'
    sha256 '6f1babfdf037d0272c879295e6c8b1f4b6a6b08752a414175bc5331f66a921dc'

    url 'https://cdn.azul.com/zulu/bin/zulu24.30.11-ca-jdk24.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '24.30.11,24.0.1'
    sha256 'e45e12a780bef0a46b45509302bbd4c71692e0d33600469345809a556d961258'

    url 'https://cdn.azul.com/zulu/bin/zulu24.30.11-ca-jdk24.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 24'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 24.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.24'
end
