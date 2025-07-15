cask 'zulu-jdk17' do

  on_intel do
    version '17.60.17,17.0.16'
    sha256 '5a3783762e1de27ff350039108953745c84fad51d6d92a28c3d6316e2096d596'

    url 'https://cdn.azul.com/zulu/bin/zulu17.60.17-ca-jdk17.0.16-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '17.60.17,17.0.16'
    sha256 'cc24aaa933ad1fda35944c2a902a52e0f1e46aca4e46ed9bcd9b1035a831618d'

    url 'https://cdn.azul.com/zulu/bin/zulu17.60.17-ca-jdk17.0.16-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
