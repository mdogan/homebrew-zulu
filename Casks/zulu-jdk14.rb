cask 'zulu-jdk14' do

    version '14.29.23,14.0.2'
    sha256 '8ed14e3a3b8fabb799716e4cebf1cf0ac6033c5f5c7597aa659c19d4459ebc7b'

    url 'https://cdn.azul.com/zulu/bin/zulu14.29.23-ca-jdk14.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'


  name 'Azul Zulu® JDK 14'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Zulu 14.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.14'
end
