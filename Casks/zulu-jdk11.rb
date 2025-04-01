cask 'zulu-jdk11' do

  on_intel do
    version '11.78.15,11.0.26'
    sha256 '588e3ef0bbe4dd67f4335aa24f2db3e128318ba4e1e2eda1041c6091bae82634'

    url 'https://cdn.azul.com/zulu/bin/zulu11.78.15-ca-jdk11.0.26-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '11.78.15,11.0.26'
    sha256 'a1accfa45e1569f7b649aaf6b10f4ff8a42006013b8d1149f7271cafd971139f'

    url 'https://cdn.azul.com/zulu/bin/zulu11.78.15-ca-jdk11.0.26-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
