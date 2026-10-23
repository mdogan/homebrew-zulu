cask 'zulu-jdk25' do

  on_intel do
    version '25.38.107,25.0.5'
    sha256 '7eac4eedb66eb1edffe8ad92990893dab305d9145a180438dbdde1056dc26f01'

    url 'https://cdn.azul.com/zulu/bin/zulu25.38.107-ca-jdk25.0.5-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '25.38.107,25.0.5'
    sha256 '142a876089d37faf3046abb477fa927be16930929617cd4f733e9fc4c9f0d788'

    url 'https://cdn.azul.com/zulu/bin/zulu25.38.107-ca-jdk25.0.5-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 25'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
