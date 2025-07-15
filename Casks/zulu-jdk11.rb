cask 'zulu-jdk11' do

  on_intel do
    version '11.82.19,11.0.28'
    sha256 'de04be4c633bc9c9d29c1ac55234a9eea828cf9a34aebf4a429bcb98abef15e4'

    url 'https://cdn.azul.com/zulu/bin/zulu11.82.19-ca-jdk11.0.28-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '11.82.19,11.0.28'
    sha256 '6d378987dd5ecfbc27d14acd82ee85a7e9d5c9054981796b6787bdb82cef780f'

    url 'https://cdn.azul.com/zulu/bin/zulu11.82.19-ca-jdk11.0.28-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
