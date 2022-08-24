cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.36.17,17.0.4.1'
    sha256 'e46dcae9aa96d42b35442f0a379f3c7c8f8ade20f081b5804ba9e6e47421cc7c'

    url 'https://cdn.azul.com/zulu/bin/zulu17.36.17-ca-jdk17.0.4.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.36.17,17.0.4.1'
    sha256 '92245d2a7876d465875822eb487340e8f11ba7e00e249bcec3e801bfea45dff6'

    url 'https://cdn.azul.com/zulu/bin/zulu17.36.17-ca-jdk17.0.4.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
