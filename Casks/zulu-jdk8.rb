cask 'zulu-jdk8' do

  on_intel do
    version '8.88.0.19,8.0.462'
    sha256 '11a6eaf0a1e87cc50397c778098b732faf487d6f70b2ff870f7d27fd81566ed9'

    url 'https://cdn.azul.com/zulu/bin/zulu8.88.0.19-ca-jdk8.0.462-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '8.88.0.19,8.0.462'
    sha256 '0ea9ca76e97599fa0326c4875b312a09c5a66cba9ea136d0de484a5261c7ec3b'

    url 'https://cdn.azul.com/zulu/bin/zulu8.88.0.19-ca-jdk8.0.462-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
