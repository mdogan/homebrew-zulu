cask 'zulu-jdk21' do

  on_intel do
    version '21.48.17,21.0.10'
    sha256 '3a918e0dc0e41d9a7e1fcd97fc33bcd0c32a343ca794deea34553c01c02aa24d'

    url 'https://cdn.azul.com/zulu/bin/zulu21.48.17-ca-jdk21.0.10-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '21.48.17,21.0.10'
    sha256 '821a3774902774c5676a420a7a8a0f143f1b3bfef9800d32813aec447678dfc9'

    url 'https://cdn.azul.com/zulu/bin/zulu21.48.17-ca-jdk21.0.10-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 21'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
