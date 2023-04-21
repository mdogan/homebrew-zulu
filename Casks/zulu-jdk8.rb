cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.70.0.23,8.0.372'
    sha256 '1987b0b71db22fd917ba6da7cb3619a4faf65388b4a6f830c3f3075703dae8a2'

    url 'https://cdn.azul.com/zulu/bin/zulu8.70.0.23-ca-jdk8.0.372-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.70.0.23,8.0.372'
    sha256 '931e247b3f7dddc4d7865d5fdb302f8f17321b76cd60120ddb23d407658053cc'

    url 'https://cdn.azul.com/zulu/bin/zulu8.70.0.23-ca-jdk8.0.372-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
