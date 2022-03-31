cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.60.0.21,8.0.322'
    sha256 '44b3ea6856c92230e2c1ca27f2b0ddc533830f3774c955c83c463c13858678c7'

    url 'https://cdn.azul.com/zulu/bin/zulu8.60.0.21-ca-jdk8.0.322-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '8.60.0.21,8.0.322'
    sha256 '6cea661f8bf457c3514cb8cb28d10f7ade1141a2ed6472c5c6f569a66dfbd87c'

    url 'https://cdn.azul.com/zulu/bin/zulu8.60.0.21-ca-jdk8.0.322-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
