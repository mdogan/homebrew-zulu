cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.46.19,17.0.9'
    sha256 '9a24939bfc5df574675c4d666d78a3211f00411cc08b4872dfc07a0bf7e5fd90'

    url 'https://cdn.azul.com/zulu/bin/zulu17.46.19-ca-jdk17.0.9-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.46.19,17.0.9'
    sha256 'cec93e9bb5df6a77885d7b012c854a69ef5b4ba75e3db36e77b9df3aca149222'

    url 'https://cdn.azul.com/zulu/bin/zulu17.46.19-ca-jdk17.0.9-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
