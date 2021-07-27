cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.34.17,15.0.4'
    sha256 'd19f580d9197626dab0b242e9f4a4c1b88a3a9d55d18ac97474f73744c34bd79'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '15.34.17,15.0.4'
    sha256 '0ce1eb4c2013da40bafe79becda9a3d9d994a3eab9ce4010f5f9270f71a16a81'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
