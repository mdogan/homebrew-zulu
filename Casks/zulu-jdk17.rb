cask 'zulu-jdk17' do

  on_intel do
    version '17.70.111,17.0.21'
    sha256 'd4fd74f77711b75452571f5eabc4b6150e249c51ba36ab40877793b99249e567'

    url 'https://cdn.azul.com/zulu/bin/zulu17.70.111-ca-jdk17.0.21-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '17.70.111,17.0.21'
    sha256 'b784358690f693bee78e9cd76137ba9bd34c65ced0916d536314f3a3d5562575'

    url 'https://cdn.azul.com/zulu/bin/zulu17.70.111-ca-jdk17.0.21-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 17'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
