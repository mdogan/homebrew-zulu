cask 'zulu-jdk13' do

  if Hardware::CPU.intel?
    version '13.42.17,13.0.8'
    sha256 '75cba5a0fb0609d71906c8cc8f3a4700ff037d3ff577c65e982bdc1d4bc4def4'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '13.42.17,13.0.8'
    sha256 '1a89abcbbdafd305bbffdcdce4bc0544ff69db5fe3a0403122a131e4913f132d'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 13'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
