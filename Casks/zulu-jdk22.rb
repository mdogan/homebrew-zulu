cask 'zulu-jdk22' do

  on_intel do
    version '22.32.15,22.0.2'
    sha256 'da90a3495a0f4b1e1e1d321488012ad141250422dcda11d6ceaa09511b59533a'

    url 'https://cdn.azul.com/zulu/bin/zulu22.32.15-ca-jdk22.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '22.32.15,22.0.2'
    sha256 '0f68c5fca1bf249aa57ffbeb2619daa0609208559a6a93c62329c76f301d7ace'

    url 'https://cdn.azul.com/zulu/bin/zulu22.32.15-ca-jdk22.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 22'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 22.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.22'
end
