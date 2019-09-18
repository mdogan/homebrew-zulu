cask 'zulu-jdk7' do
    version '7.0.232,7.31.0.5_1-ca'
    sha256 'e5709eb2a37d399898ffe9bc1ef66af5a043af1cb28d3cb52197108acb3d4a20'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 7'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
              rmdir:   '/Library/Java/JavaVirtualMachines'
  end
