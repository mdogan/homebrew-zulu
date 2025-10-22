cask 'zulu-jdk25' do

  on_intel do
    version '25.30.17,25.0.1'
    sha256 'ae99fc86273f9966bf9363820c68655ab8cb150ae850a598f13c369c56c87f0c'

    url 'https://cdn.azul.com/zulu/bin/zulu25.30.17-ca-jdk25.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '25.30.17,25.0.1'
    sha256 '8cf7c5478cb68313053155bad79aa1a2295d10a344d197f1e9486cdf2ddcdab8'

    url 'https://cdn.azul.com/zulu/bin/zulu25.30.17-ca-jdk25.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 25'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
