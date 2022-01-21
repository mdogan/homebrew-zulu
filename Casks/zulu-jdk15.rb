cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.38.17,15.0.6'
    sha256 '54fd366572dcb1398c1920375fea12e007fe6a5a4f528b73f80a9fcf3ff741c5'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '15.38.17,15.0.6'
    sha256 '8d55f0d183d7eb79383822ceca5797dbea989790a4ad5051fc810751948f21f5'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
