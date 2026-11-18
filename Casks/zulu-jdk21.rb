cask 'zulu-jdk21' do

  on_intel do
    version '21.54.201,21.0.13.1'
    sha256 '45f0a804c95b7001e5d109316160c5dd768e3d4f2e61d6a1e34c1b54a19847a3'

    url 'https://cdn.azul.com/zulu/bin/zulu21.54.201-ca-jdk21.0.13.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '21.54.201,21.0.13.1'
    sha256 '8c3417bedff2ad9a0a46ebfe145347204a8dc509de3d07a39e3b0f740b1b29b0'

    url 'https://cdn.azul.com/zulu/bin/zulu21.54.201-ca-jdk21.0.13.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 21'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
