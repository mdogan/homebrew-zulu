cask 'zulu-jdk21' do

  on_intel do
    version '21.46.19,21.0.9'
    sha256 'c9be55089eb9cf055713e048bde97e7bc27848abc52e6f070017d6375a23d86d'

    url 'https://cdn.azul.com/zulu/bin/zulu21.46.19-ca-jdk21.0.9-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '21.46.19,21.0.9'
    sha256 '34ed690a5f66b17b29be9b2db21b3cba85532b33adedacab85a5780aab8754d2'

    url 'https://cdn.azul.com/zulu/bin/zulu21.46.19-ca-jdk21.0.9-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
