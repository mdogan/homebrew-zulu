cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.36.13,15.0.5'
    sha256 '374538c82778804e287bda2b660c36a63bd67f4c0fd9985b236935ec831a749e'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '15.36.13,15.0.5'
    sha256 'c255dcf3e1165864846f3d67b7da96dd07230a8def64b4693ad66b12cea0a301'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
