cask 'zulu-jdk15' do
  version '15.27.17,15.0.0'
  sha256 '555dc9791fd3d9ea276ea273c5b2bc31224a02992eeb60f7d772780df21eef7d'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu-community/'
  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  depends_on macos: '>= :high_sierra'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
