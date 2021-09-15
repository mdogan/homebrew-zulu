cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.28.13,17.0.0'
    sha256 '88cbb8084dacbcf9d2e9a4ae6bff43a8e833aa4b5fd58a19ef5647892a9efe10'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '17.28.13,17.0.0'
    sha256 '2b15b8243781b8c8f03d0391ab5a2d93a380db88222dad5e0e90de0dcb472968'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
