cask 'zulu-jdk8' do

  on_intel do
    version '8.84.0.15,8.0.442'
    sha256 '10e4ef3f5307f8e477f206dc40eab52e555b4f720fc7153e04c6e4d60d6241a0'

    url 'https://cdn.azul.com/zulu/bin/zulu8.84.0.15-ca-jdk8.0.442-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '8.84.0.15,8.0.442'
    sha256 'deaab641622ea649bbbf5d4766018f10e57b12a9e8bd07b3ada308eafe10cb6e'

    url 'https://cdn.azul.com/zulu/bin/zulu8.84.0.15-ca-jdk8.0.442-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
