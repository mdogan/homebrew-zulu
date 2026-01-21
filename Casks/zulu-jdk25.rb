cask 'zulu-jdk25' do

  on_intel do
    version '25.32.17,25.0.2'
    sha256 'd4b412546eb4bcc3fda45c782ab2dd1e9de57fd91a5e2de5f0b083e438d4305c'

    url 'https://cdn.azul.com/zulu/bin/zulu25.32.17-ca-jdk25.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '25.32.17,25.0.2'
    sha256 'e7ea3ad307c1f55d628d210ab69fffd6b732fa2ddc9c9834a17132d1dfd0b23d'

    url 'https://cdn.azul.com/zulu/bin/zulu25.32.17-ca-jdk25.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 25'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
