cask 'zulu-jdk11' do

  on_intel do
    version '11.90.19,11.0.32'
    sha256 '4bda4bbe3eadcfc56e0c93d5b1dbcc6332442b3fc16b4cfe56151269dc80b1cc'

    url 'https://cdn.azul.com/zulu/bin/zulu11.90.19-ca-jdk11.0.32-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '11.90.19,11.0.32'
    sha256 'c60505e6575d098e5939816c9096d3d43b38641ae7d048fc67c601d780aef879'

    url 'https://cdn.azul.com/zulu/bin/zulu11.90.19-ca-jdk11.0.32-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 11'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
