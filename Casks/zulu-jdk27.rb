cask 'zulu-jdk27' do

  on_intel do
    version '27.30.109,27.0.1.0.3'
    sha256 'e637a76765469e4c9aef986c7130a82a4cdcfdd27b0a07a6afe0f2ca7bb96c22'

    url 'https://cdn.azul.com/zulu/bin/zulu27.30.109-ca-jdk27.0.1.0.3-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '27.30.109,27.0.1.0.3'
    sha256 '31748960ed7a483ebd5aa10c53e0aa5716b57824b5960f33e06108fec5d62d4d'

    url 'https://cdn.azul.com/zulu/bin/zulu27.30.109-ca-jdk27.0.1.0.3-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 27'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 27.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.27'
end
