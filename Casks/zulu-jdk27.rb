cask 'zulu-jdk27' do

  on_intel do
    version '27.30.201,27.0.1.1'
    sha256 '10b84d20c0adb6256e3a14c0b47ca5a9774bf534eab3fbf95d374ce00814bf58'

    url 'https://cdn.azul.com/zulu/bin/zulu27.30.201-ca-jdk27.0.1.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '27.30.201,27.0.1.1'
    sha256 'd4bbacbbec19f47e638369059e03de8afaf455ee615bca156af8b6f3c07fe066'

    url 'https://cdn.azul.com/zulu/bin/zulu27.30.201-ca-jdk27.0.1.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 27'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 27.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.27'
end
