cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.50.19,11.0.12'
    sha256 '4820c5ecbdfe199398aa361864ef9812a8af15c221540f8016d05d70fde6db94'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '11.50.19,11.0.12'
    sha256 '6c8cbf1a685d04348e92e7c104987fdfe40688b3f51fe98056a5570cec0564e8'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
