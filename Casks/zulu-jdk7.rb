cask 'zulu-jdk7' do
    version '7.0.302,7.46.0.11-ca'
    sha256 '216f9da2bc32431103bb0a2ad17981aa89e54ae3260fe1c69542fa355fedf88e'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 7'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

  end
