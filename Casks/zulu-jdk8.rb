cask 'zulu-jdk8' do
    version '8.0.232,8.42.0.23_1'
    sha256 '47e5ba7f0d92f85c4273ac4eeb638d9971d75d07ac90cb7a64d7e7567b01d159'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 8'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :yosemite'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
