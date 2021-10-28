cask 'zulu-jdk7' do
    version '7.0.322,7.50.0.11-ca'
    sha256 '5e7aad03154922bcb06f21c256a445c840956f9af4bb630b5b719433dfe3ae9c'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 7'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  end
