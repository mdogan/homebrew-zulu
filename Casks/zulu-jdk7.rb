cask 'zulu-jdk7' do
    version '7.0.232,7.31.0.5-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu/'
    name 'Azul Zulu® JDK 7'
    homepage 'https://www.azul.com/downloads/zulu/'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
              rmdir:   '/Library/Java/JavaVirtualMachines'
  end
