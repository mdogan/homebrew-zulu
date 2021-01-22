cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.28.51,15.0.1'
    sha256 '991311eaa854b2c6ec7747d548d3208099b293ef2eb3727320ba83c875154777'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '15.28.1013,15.0.1'
    sha256 '055a493236ed0023216f40d4e222ebc9cebd13bcaa8288d9f6c6c5c2d61f30ee'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
