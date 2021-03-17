cask 'zulu-jdk16' do

  if Hardware::CPU.intel?
    version '16.28.11,16.0.0'
    sha256 'BE159C6B98E23B2D5DE0006B0C5F06CA9A35ECC6E5D2A8B1B3B19C55CF608D5D'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '16.28.11,16.0.0'
    sha256 'C60B1B09F68F8ED38754A0D14C5EA45E4C9C81FDF4638030ED15CB895CB7EAF7'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 16'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
