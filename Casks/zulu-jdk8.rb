cask 'zulu-jdk8' do
    version '8.0.282,8.52.0.23'
    sha256 '4eaf47acd097ad3102f55ddc586f4e1fbb3b8b8115d5cb2c455a54b0d84ee1bc'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 8'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
