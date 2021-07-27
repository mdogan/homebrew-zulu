cask 'zulu-jdk7' do
    version '7.0.312,7.48.0.11-ca'
    sha256 '97c9bc69f957e76a34aa1d45246c43021ccc2d5cf33e7b777bc448c1018bb4b7'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 7'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  end
