cask 'zulu-jdk13' do

  if Hardware::CPU.intel?
    version '13.44.13,13.0.9'
    sha256 'f3897710a368f8f87d28c73b8b20c62f7397de5d9b4eec8f90092ecc8638b4f3'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '13.44.13,13.0.9'
    sha256 'c93142763d69c59c7ce38964754b08a1755f8318955ea40167bda6e485859566'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 13'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
