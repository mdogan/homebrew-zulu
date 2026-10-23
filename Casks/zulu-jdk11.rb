cask 'zulu-jdk11' do

  on_intel do
    version '11.92.109,11.0.33'
    sha256 'd37db1a58ee219be870efe26ed78d7c686128f23f17953250a2cce9a07ad6513'

    url 'https://cdn.azul.com/zulu/bin/zulu11.92.109-ca-jdk11.0.33-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '11.92.109,11.0.33'
    sha256 '6f5b23d76e4408f57b5fc9a415cabbd308bc25b5f8a08f574f118da2b9deb682'

    url 'https://cdn.azul.com/zulu/bin/zulu11.92.109-ca-jdk11.0.33-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 11'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
