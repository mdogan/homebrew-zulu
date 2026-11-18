cask 'zulu-jdk11' do

  on_intel do
    version '11.92.201,11.0.33.1'
    sha256 '612999de5825e40017615f9dfeb7b97279f2fe060b583dfef16a23764735f362'

    url 'https://cdn.azul.com/zulu/bin/zulu11.92.201-ca-jdk11.0.33.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '11.92.201,11.0.33.1'
    sha256 'b32f754e2e4f0fc04ac662aecd5fcb1b80c1692856b01b9261327de65906a31b'

    url 'https://cdn.azul.com/zulu/bin/zulu11.92.201-ca-jdk11.0.33.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 11'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
