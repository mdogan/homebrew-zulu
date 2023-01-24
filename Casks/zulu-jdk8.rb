cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.68.0.21,8.0.362'
    sha256 '2075fbd37c322e3ab1ef0f7ab149c0285ef531277ad05c10a8be5b57ac0bbbd5'

    url 'https://cdn.azul.com/zulu/bin/zulu8.68.0.21-ca-jdk8.0.362-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.68.0.21,8.0.362'
    sha256 '5932b9152fe8264470f6d2645e2133d78b52db6b2fd1db8f2d6334639d46e4d0'

    url 'https://cdn.azul.com/zulu/bin/zulu8.68.0.21-ca-jdk8.0.362-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
