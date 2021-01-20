cask 'zulu-jdk11-aarch64' do
    version '11.43.1015,11.0.9.1'
    sha256 'e6e55cb09b535a3d195a9b1719613842b6af01e6e7536c98fddb1cd28fd44f78'
    
    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macos_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 11'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
