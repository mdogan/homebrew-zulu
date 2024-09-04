cask 'zulu-jdk11' do

  on_intel do
    version '11.74.15,11.0.24'
    sha256 '7c8e9cc1ee9b62f3faa902fae0f860578d833d2f0c9cd7c8a1ea84b6fd4cddf1'

    url 'https://cdn.azul.com/zulu/bin/zulu11.74.15-ca-jdk11.0.24-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '11.74.15,11.0.24'
    sha256 'cc3848ec9a540ed445f21264a05d82f2a8207e26f0e4a311fed23550873468f8'

    url 'https://cdn.azul.com/zulu/bin/zulu11.74.15-ca-jdk11.0.24-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
