cask 'zulu-jdk21' do

  if Hardware::CPU.intel?
    version '21.28.85,21.0.0'
    sha256 'd8fc881a204400633189491f411886ee9338d6081767c1efba09b700df92fa0b'

    url 'https://cdn.azul.com/zulu/bin/zulu21.28.85-ca-jdk21.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '21.28.85,21.0.0'
    sha256 'd9ce2ff2be7decf614bf77b4fc5cf119186effc82fff213e14a45bbc33793af4'

    url 'https://cdn.azul.com/zulu/bin/zulu21.28.85-ca-jdk21.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
