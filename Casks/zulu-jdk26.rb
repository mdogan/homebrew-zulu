cask 'zulu-jdk26' do

  on_intel do
    version '26.28.59,26.0.0'
    sha256 'aa8321bda55fd137012cecbb58aabfeb9b45de41736270aa76cf10be94f68bb4'

    url 'https://cdn.azul.com/zulu/bin/zulu26.28.59-ca-jdk26.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '26.28.59,26.0.0'
    sha256 'beef0502b725b4d453899d6249cedf0eec823b7d68f0cba16c5794dbd75134cf'

    url 'https://cdn.azul.com/zulu/bin/zulu26.28.59-ca-jdk26.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 26'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 26.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.26'
end
