cask 'zulu-jdk17' do

  on_intel do
    version '17.70.201,17.0.21.1'
    sha256 '01e382709179a5b89822d901e7df7f8f2aa2b5eaa241f4ef892a976892072881'

    url 'https://cdn.azul.com/zulu/bin/zulu17.70.201-ca-jdk17.0.21.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '17.70.201,17.0.21.1'
    sha256 '08da15c09b0b19580803ed527b1b22cf991826c80f8dae0be8face98aca34fab'

    url 'https://cdn.azul.com/zulu/bin/zulu17.70.201-ca-jdk17.0.21.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 17'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
