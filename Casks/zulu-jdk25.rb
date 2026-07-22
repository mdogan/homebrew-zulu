cask 'zulu-jdk25' do

  on_intel do
    version '25.36.15,25.0.4'
    sha256 '295b2c7295617a413e01576c08b6bfd56fa7a329f72b2af31e30084f40469f02'

    url 'https://cdn.azul.com/zulu/bin/zulu25.36.15-ca-jdk25.0.4-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '25.36.15,25.0.4'
    sha256 'df59f1c07c3e5e4d754249eb2ae2701035edaa12289bb05ebb804b3746310d2e'

    url 'https://cdn.azul.com/zulu/bin/zulu25.36.15-ca-jdk25.0.4-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 25'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
