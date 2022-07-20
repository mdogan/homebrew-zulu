cask 'zulu-jdk18' do

  if Hardware::CPU.intel?
    version '18.32.11,18.0.2'
    sha256 '7511ab48ff1f8d6dfad9941f86871d399ebae0ecf1543986b2a59c5cfbde69bd'

    url 'https://cdn.azul.com/zulu/bin/zulu18.32.11-ca-jdk18.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '18.32.11,18.0.2'
    sha256 '6bfc8f5e839a4f04e43db40bd9ab49e437e738cfaa457cc79269dae94a703f81'

    url 'https://cdn.azul.com/zulu/bin/zulu18.32.11-ca-jdk18.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 18'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 18.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.18'
end
