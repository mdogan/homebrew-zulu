cask 'zulu-jdk18' do

  if Hardware::CPU.intel?
    version '18.28.13,18.0.0'
    sha256 'a349702f247729466471acaf5b33eda291ad615233ad5224a7130d7eb4a6c497'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '18.28.13,18.0.0'
    sha256 '1b690d087e0b0f0b61cc7ac0f8b9f7d0fd6269f0132067330a106f205f288eed'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 18'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Azul Zulu JDK #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
