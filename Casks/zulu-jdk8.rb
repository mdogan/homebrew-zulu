cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.0.312,8.58.0.13'
    sha256 '9e61884a468df79ff762d0c1ec82090f4292ec0c7204707560dc31fb3c3bf594'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '8.0.312,8.58.0.13'
    sha256 '15ac8c0f246b0c2065200f8e864faff8bf9340cf7d960a60857af67454b58746'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
