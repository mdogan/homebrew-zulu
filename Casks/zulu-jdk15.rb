cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.44.13,15.0.9'
    sha256 'b8d81ed577237b94c15b86f7db449519ef5b7ca540451eb74eac64f7bdf90a11'

    url 'https://cdn.azul.com/zulu/bin/zulu15.44.13-ca-jdk15.0.9-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '15.44.13,15.0.9'
    sha256 '0c3628efdf22c387d41d68889e90b7045c6e99fb6e9e1e5f9e32c9ca423226bc'

    url 'https://cdn.azul.com/zulu/bin/zulu15.44.13-ca-jdk15.0.9-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 15.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.15'
end
