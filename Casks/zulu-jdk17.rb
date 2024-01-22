cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.48.15,17.0.10'
    sha256 '3a2c5a4d51606bf75e5079be7b07861de88bdb550fb6287611809ea88d39ddeb'

    url 'https://cdn.azul.com/zulu/bin/zulu17.48.15-ca-jdk17.0.10-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.48.15,17.0.10'
    sha256 'ee7c43db0e7f215a223291937281e3ecb7f4732a8a8334311916b19a068855e8'

    url 'https://cdn.azul.com/zulu/bin/zulu17.48.15-ca-jdk17.0.10-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
