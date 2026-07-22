cask 'zulu-jdk26' do

  on_intel do
    version '26.32.13,26.0.2'
    sha256 '05a1ce9470cae8f2df86dae15d70d29fdd1ecaeb32c6d788ac000bc8127d7d71'

    url 'https://cdn.azul.com/zulu/bin/zulu26.32.13-ca-jdk26.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '26.32.13,26.0.2'
    sha256 '5475eb8a6b72491e96cc663808504cb694b0be301bbe7ce49def45f9950ed919'

    url 'https://cdn.azul.com/zulu/bin/zulu26.32.13-ca-jdk26.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 26'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 26.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.26'
end
