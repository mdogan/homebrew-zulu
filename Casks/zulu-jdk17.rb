cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.30.15,17.0.1'
    sha256 '34311143c9da6f4993d073979f64c1a4272990261a429dcb9e4a231c6236bccf'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '17.30.15,17.0.1'
    sha256 '132ba9bed55c54eeafdee3472468bde1e740d13a1dbb644f76dba0eaa585f1f2'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
