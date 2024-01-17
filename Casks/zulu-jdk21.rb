cask 'zulu-jdk21' do

  if Hardware::CPU.intel?
    version '21.32.17,21.0.2'
    sha256 '7af4907461621dff14274698073a73b1fc7374fb412341e5c348a15c8c387b5b'

    url 'https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-jdk21.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '21.32.17,21.0.2'
    sha256 '97e9bdf1b0c46715685102235a1f0a845f3d151f7a3ab9f50888510fb5d63738'

    url 'https://cdn.azul.com/zulu/bin/zulu21.32.17-ca-jdk21.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
