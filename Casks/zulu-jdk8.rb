cask 'zulu-jdk8' do
    version '8.0.222,8.40.0.25-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu/'
    name 'Azul Zulu® JDK 8'
    homepage 'https://www.azul.com/downloads/zulu/'

    depends_on macos: '>= :yosemite'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
