cask 'zulu-jdk25' do

  on_intel do
    version '25.38.109,25.0.5.0.3'
    sha256 '945975b92716492651e7250d007549b277fce699d8f94b08c417be6e263bfa4c'

    url 'https://cdn.azul.com/zulu/bin/zulu25.38.109-ca-jdk25.0.5.0.3-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '25.38.109,25.0.5.0.3'
    sha256 '85ee4f06aec3b01ae495931496d0aafd58cb78ac12745a32674a801902313acb'

    url 'https://cdn.azul.com/zulu/bin/zulu25.38.109-ca-jdk25.0.5.0.3-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 25'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
