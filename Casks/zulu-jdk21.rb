cask 'zulu-jdk21' do

  on_intel do
    version '21.44.17,21.0.8'
    sha256 '92e084069a20b93c18d471ff0f0248d483093687c2c658b3789c19861b4941af'

    url 'https://cdn.azul.com/zulu/bin/zulu21.44.17-ca-jdk21.0.8-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '21.44.17,21.0.8'
    sha256 '00ae1750485095cc156266a2140f17da1d7f3e56d1b1bc09238d108f5400dfb1'

    url 'https://cdn.azul.com/zulu/bin/zulu21.44.17-ca-jdk21.0.8-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
