cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.52.13,11.0.13'
    sha256 'b780c7934ee5e67b82cd0362dd0295895d53976498b3dccfe18747d98ea27bda'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '11.52.13,11.0.13'
    sha256 'e26e3df726f53f0ac91f35dd07791fc81cf18a1347ab56a7a156de256db60b8c'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
