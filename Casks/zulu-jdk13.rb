cask 'zulu-jdk13' do
    version '13.29.9,13.0.2'
    sha256 'e4c7f6bc9caa1bba2659e8d0019e75002b84b43b4bd67de7e740d6698f629900'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 13'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
