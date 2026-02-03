cask 'zulu-jdk8' do

  on_intel do
    version '8.92.0.21,8.0.482'
    sha256 '7204eaf1ccf239a2775561ad245b43eb375c4c342a5893da29cdb2eb31993694'

    url 'https://cdn.azul.com/zulu/bin/zulu8.92.0.21-ca-jdk8.0.482-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '8.92.0.21,8.0.482'
    sha256 '1e7258d7d5a95882cc3d3ccd02786d9526c939b69e007a0254e4722288c6e1df'

    url 'https://cdn.azul.com/zulu/bin/zulu8.92.0.21-ca-jdk8.0.482-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 8'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
