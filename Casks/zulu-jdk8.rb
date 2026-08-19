cask 'zulu-jdk8' do

  on_intel do
    version '8.96.0.205,8.0.504'
    sha256 '62894031cd9422f237f18ef33588e5f5d8b6520f1831c3df03eaaac6f3df2b71'

    url 'https://cdn.azul.com/zulu/bin/zulu8.96.0.205-ca-jdk8.0.504-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '8.96.0.205,8.0.504'
    sha256 'bcc4ee2f822071d36d0a06c3bdea89fa6fc9db21ee47b758a9a48c251fd7e659'

    url 'https://cdn.azul.com/zulu/bin/zulu8.96.0.205-ca-jdk8.0.504-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 8'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
