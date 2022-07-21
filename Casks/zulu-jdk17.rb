cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.36.13,17.0.4'
    sha256 '3a3143b0f89ad5b07b44fa81078f38ef181d6f4e03649ab04360a261be64284a'

    url 'https://cdn.azul.com/zulu/bin/zulu17.36.13-ca-jdk17.0.4-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.36.13,17.0.4'
    sha256 '7a945596e479b2e3aeb40a89d05fd54652ba9c96d69b8dddae7656c7e171eb47'

    url 'https://cdn.azul.com/zulu/bin/zulu17.36.13-ca-jdk17.0.4-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
