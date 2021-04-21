cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.48.21,11.0.11'
    sha256 '5850bf567d04ca1bc62d95aee685c5638907111220008327db22d920df326046'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '11.48.21,11.0.11'
    sha256 '99b15a085060dd39031cd94869ef330f8c58b44c281fb6ea51af903bf24fff10'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
