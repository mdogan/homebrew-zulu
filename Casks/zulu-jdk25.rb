cask 'zulu-jdk25' do

  on_intel do
    version '25.28.85,25.0.0'
    sha256 '944a649fdc35004633c89be0f803decd2975166b196f1037b0cd011ca3f0f5d1'

    url 'https://cdn.azul.com/zulu/bin/zulu25.28.85-ca-jdk25.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '25.28.85,25.0.0'
    sha256 '98eaed9589b95f06dfa666e6a098cf35692b9e87cbf75a1eabc7a422035a1015'

    url 'https://cdn.azul.com/zulu/bin/zulu25.28.85-ca-jdk25.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 25'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
