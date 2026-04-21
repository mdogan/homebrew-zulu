cask 'zulu-jdk26' do

  on_intel do
    version '26.30.11,26.0.1'
    sha256 'e302ebeb044a7c73f5726afbf53d8b36be7d49aaa55fd1c6611497cd54a6038c'

    url 'https://cdn.azul.com/zulu/bin/zulu26.30.11-ca-jdk26.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '26.30.11,26.0.1'
    sha256 'c19bfb839d0de68d76fb5435c4f6684349b1e80e3bf7242e51834d43b7533c5d'

    url 'https://cdn.azul.com/zulu/bin/zulu26.30.11-ca-jdk26.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 26'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 26.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.26'
end
