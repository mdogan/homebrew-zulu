cask 'zulu-jdk8' do
    version '8.0.222,8.40.0.25_1-ca'
    sha256 '1fdceaf6f1cf5588fa38313802d017f8a3b89c0a23a06ad37ef9a106dd82a2bf'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 8'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :yosemite'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
