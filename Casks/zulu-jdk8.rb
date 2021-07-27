cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.0.302,8.56.0.21'
    sha256 '4e667ac2b946d8890a0d9ffe2168e1ad1ccb3f82c3683ccd3f10ce5349c874a7'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '8.0.302,8.56.0.23'
    sha256 'ee6c3ceaa3ef384c322c50b64feeaf0e7a9b54895300a4935b50a8e5df22e858'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
