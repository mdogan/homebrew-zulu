cask 'zulu-jdk12' do
    version '12.2.3,12.0.1'
    sha256 :no_check

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
    name 'Azul Zulu Java Standard Edition Development Kit'
    homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

    depends_on macos: '>= :sierra'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
              rmdir:   '/Library/Java/JavaVirtualMachines'
  end
