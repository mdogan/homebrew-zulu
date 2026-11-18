cask 'zulu-jdk25' do

  on_intel do
    version '25.38.201,25.0.5.1'
    sha256 'bf4249e91f505c61611fe67a7c9c00571f7003ddc45d0a8d08f1aca721a10085'

    url 'https://cdn.azul.com/zulu/bin/zulu25.38.201-ca-jdk25.0.5.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '25.38.201,25.0.5.1'
    sha256 'ffea3880544ce317225c09c9ea2d152179e775845f47c71892690711373d38b8'

    url 'https://cdn.azul.com/zulu/bin/zulu25.38.201-ca-jdk25.0.5.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 25'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 25.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.25'
end
