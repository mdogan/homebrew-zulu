cask 'zulu-jdk27' do

  on_intel do
    version '27.28.101,27.0.0'
    sha256 '3d12836c2a0cbfcadb92ad9e8fc00e49bbe435d94374382509bc893a41ce1de9'

    url 'https://cdn.azul.com/zulu/bin/zulu27.28.101-ca-jdk27.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '27.28.101,27.0.0'
    sha256 '33c3608c89046d12a4888741eeced4a80302e0c208fd5509f551856bbf23a478'

    url 'https://cdn.azul.com/zulu/bin/zulu27.28.101-ca-jdk27.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 27'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 27.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.27'
end
