cask 'zulu-jdk13' do
    version '13.27.9,13'
    sha256 :no_check

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu/'
    name 'Azul Zulu® JDK 13'
    homepage 'https://www.azul.com/downloads/zulu/'

    depends_on macos: '>= :sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
              rmdir:   '/Library/Java/JavaVirtualMachines'
  end
