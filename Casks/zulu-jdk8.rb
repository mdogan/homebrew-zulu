cask 'zulu-jdk8' do

  on_intel do
    version '8.86.0.25,8.0.452'
    sha256 '8064830aabef45206948a592d2d0dc0392a350bad7a9c0eae05e9cc559e91260'

    url 'https://cdn.azul.com/zulu/bin/zulu8.86.0.25-ca-jdk8.0.452-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '8.86.0.25,8.0.452'
    sha256 '0ff745669dd7f5e2391836b43ff36f596d79315110d3cfa3208b4a21d1476ee2'

    url 'https://cdn.azul.com/zulu/bin/zulu8.86.0.25-ca-jdk8.0.452-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
