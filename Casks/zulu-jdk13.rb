cask 'zulu-jdk13' do

  if Hardware::CPU.intel?
    version '13.40.15,13.0.7'
    sha256 '7195a58529887ecdd00ff1f8a776d4ed75e83ddf4f6a79274e7f02f95f4a37e4'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '13.40.15,13.0.7'
    sha256 'e5d644c9a6842b8e6400ce2356a692103711530ad0593a81b9398ab72f3386f8'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 13'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
