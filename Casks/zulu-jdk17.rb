cask 'zulu-jdk17' do

  on_intel do
    version '17.58.21,17.0.15'
    sha256 'cdd51438325cbb0a6d894260864944f90abd8299a45f01f241a31f3ed5c50fe4'

    url 'https://cdn.azul.com/zulu/bin/zulu17.58.21-ca-jdk17.0.15-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '17.58.21,17.0.15'
    sha256 '6b40a904234c20f7854e92a117685134bc56b78a84ec794dfbdf7b9398dab77e'

    url 'https://cdn.azul.com/zulu/bin/zulu17.58.21-ca-jdk17.0.15-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
