cask 'zulu-jdk17' do

  on_intel do
    version '17.64.15,17.0.18'
    sha256 '5f35cf63a0f46d37bbc315063a00686bed49075b85d6480139602c1951ef7c84'

    url 'https://cdn.azul.com/zulu/bin/zulu17.64.15-ca-jdk17.0.18-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '17.64.15,17.0.18'
    sha256 '052b933077b27596692c68c2c39df07df8e726530f7f314f2166f928f1c9ce86'

    url 'https://cdn.azul.com/zulu/bin/zulu17.64.15-ca-jdk17.0.18-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 17'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
