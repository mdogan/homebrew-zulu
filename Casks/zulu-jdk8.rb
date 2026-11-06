cask 'zulu-jdk8' do

  on_intel do
    version '8.98.0.111,8.0.512'
    sha256 '60fa07dcc7758ad458de11ea54933b95f406450b2e12fb67d6e070d882a917ac'

    url 'https://cdn.azul.com/zulu/bin/zulu8.98.0.111-ca-jdk8.0.512-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '8.98.0.111,8.0.512'
    sha256 '33438771c780f042a72f9bb3d49f19ccb3d343a5f1e40ba1d052cf2e8e7a458a'

    url 'https://cdn.azul.com/zulu/bin/zulu8.98.0.111-ca-jdk8.0.512-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 8'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
