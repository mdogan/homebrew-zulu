cask 'zulu-jdk21' do

  on_intel do
    version '21.54.107,21.0.13'
    sha256 '135e43fc690059694ff74446b4786d750dc7feed746d0ea1c26e336a7110b84a'

    url 'https://cdn.azul.com/zulu/bin/zulu21.54.107-ca-jdk21.0.13-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '21.54.107,21.0.13'
    sha256 '530035076dcd20b0d7f23ba43c542f6fef33354240806cc1d36988ceb2707336'

    url 'https://cdn.azul.com/zulu/bin/zulu21.54.107-ca-jdk21.0.13-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 21'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
