cask 'zulu-jdk17' do

  on_intel do
    version '17.64.17,17.0.18'
    sha256 '5c68ef41398f6aaebbf70d3120b8fb0b0d8a567192a37365f289c63bfc95c7ed'

    url 'https://cdn.azul.com/zulu/bin/zulu17.64.17-ca-jdk17.0.18-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '17.64.17,17.0.18'
    sha256 '62f45f9a5e88218723a3d54b8396afd450cf97dc85da9b380a8afb6c4442fab8'

    url 'https://cdn.azul.com/zulu/bin/zulu17.64.17-ca-jdk17.0.18-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 17'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
