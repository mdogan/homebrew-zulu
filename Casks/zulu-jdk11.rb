cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.54.23,11.0.14'
    sha256 'ff2a0ce85a489e9a47c3e74c5b87d91b8315627119892fd3d4a7924a5325df2a'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '11.54.23,11.0.14'
    sha256 '1551391ad32d798e04cf564ccf8fbf1644ec6605f1fce2a5a0d1a5f30940f6b0'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
