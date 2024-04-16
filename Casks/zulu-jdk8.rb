cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.78.0.19,8.0.412'
    sha256 '49c28ef4c069cc3c602fdd124ecf3d46fa0a7438037a6baa61af1cd7a07b4fe4'

    url 'https://cdn.azul.com/zulu/bin/zulu8.78.0.19-ca-jdk8.0.412-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.78.0.19,8.0.412'
    sha256 'f27fbac1250c9a2a5c9e29e622adb49f7ead160b3ed49ac85b0d8e17cf411b2f'

    url 'https://cdn.azul.com/zulu/bin/zulu8.78.0.19-ca-jdk8.0.412-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
