cask 'zulu-jdk22' do

  if Hardware::CPU.intel?
    version '22.30.13,22.0.1'
    sha256 '3b701be23abf01cbd69a9658148ec9edc362dc9f78b3a1dfe7874443e9489c46'

    url 'https://cdn.azul.com/zulu/bin/zulu22.30.13-ca-jdk22.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '22.30.13,22.0.1'
    sha256 '2af2bd4f8f15f3e0e2d5abc899985cc187d15b35265841a9256c182fb3faaa0d'

    url 'https://cdn.azul.com/zulu/bin/zulu22.30.13-ca-jdk22.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 22'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 22.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.22'
end
