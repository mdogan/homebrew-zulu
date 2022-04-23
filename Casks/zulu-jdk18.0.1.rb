cask 'zulu-jdk18.0.1' do

  if Hardware::CPU.intel?
    version '18.30.11,18.0.1'
    sha256 'e26f3c3f4d2a388aa0d7fa60f5473301155827192da2e09550ff5bf15982d166'

    url 'https://cdn.azul.com/zulu/bin/zulu18.30.11-ca-jdk18.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '18.30.11,18.0.1'
    sha256 '6bf03aa424cd775eacd3530104c08319971ff1fb46eff8857f72fdff16409e94'

    url 'https://cdn.azul.com/zulu/bin/zulu18.30.11-ca-jdk18.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 18.0.1'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 18.0.1.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.18.0.1'
end
