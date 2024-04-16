cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.50.19,17.0.11'
    sha256 '0f5b1609149631c56f5a41d6a6a90218685ad87d7b4e7b8699e05fc0ee2d9343'

    url 'https://cdn.azul.com/zulu/bin/zulu17.50.19-ca-jdk17.0.11-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.50.19,17.0.11'
    sha256 '59edd7fa0d3ed28d9e7ee9946be9df8e51b3056bdf2c403168815f8bb739fc11'

    url 'https://cdn.azul.com/zulu/bin/zulu17.50.19-ca-jdk17.0.11-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
