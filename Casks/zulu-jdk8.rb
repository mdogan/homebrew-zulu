cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.0.282,8.52.0.23'
    sha256 '4eaf47acd097ad3102f55ddc586f4e1fbb3b8b8115d5cb2c455a54b0d84ee1bc'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '8.0.282,8.52.0.23'
    sha256 'c6d1795d535cb448de567faf1449610fce69e5fe2e8a443a3f96f4036319f809'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
