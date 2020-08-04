cask 'zulu-jdk8' do
    version '8.0.265,8.48.0.53'
    sha256 'd2d850c6343a4da6d045e0300ac469929d1c8e2072040d1cfe2f48d264f0ab7d'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 8'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
