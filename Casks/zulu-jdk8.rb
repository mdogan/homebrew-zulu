cask 'zulu-jdk8' do
    version '8.0.242,8.44.0.9'
    sha256 '4fc76397356df2a42f87e885572b5d3a49c6f5ca6a2cabb12f0982dd1b062133'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 8'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
