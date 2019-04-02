cask 'zulu-jdk8' do
    version '8.0.202,8.36.0.1-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
    name 'Azul Zulu Java 8 Standard Edition Development Kit'
    homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

    depends_on macos: '>= :yosemite'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
