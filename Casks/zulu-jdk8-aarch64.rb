cask 'zulu-jdk8-aarch64' do
    version '8.0.275,8.50.0.1017'
    sha256 '80f1e48d017896e05b5722a3de19f799e5cb9854ec5a1883d0e7a9a9ed4e7b23'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macos_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 8'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
