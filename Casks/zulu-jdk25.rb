cask 'zulu-jdk25' do

  on_intel do
    version '25.34.17,25.0.3'
    sha256 'd8b8ba303413353314ba515a7504fa46fd55c7cddcfae37485c9dacc64d4b5da'

    url 'https://cdn.azul.com/zulu/bin/zulu25.34.17-ca-jdk25.0.3-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '25.34.17,25.0.3'
    sha256 'b01ee8c985c7153b3173f222b2a2557d2dfc2e8708f9907b6676dbfec2656c00'

    url 'https://cdn.azul.com/zulu/bin/zulu25.34.17-ca-jdk25.0.3-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 25'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
