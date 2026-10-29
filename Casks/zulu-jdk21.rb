cask 'zulu-jdk21' do

  on_intel do
    version '21.54.109,21.0.13.0.3'
    sha256 '0cdd1998e29cf5d9b816740fc5f400f33dfc4c952e64899da1576d095470719c'

    url 'https://cdn.azul.com/zulu/bin/zulu21.54.109-ca-jdk21.0.13.0.3-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '21.54.109,21.0.13.0.3'
    sha256 '6d1dc7c9e81c9cb253d9d83355b861d82c578b7665d5e59ed0f7c1ed23f7244e'

    url 'https://cdn.azul.com/zulu/bin/zulu21.54.109-ca-jdk21.0.13.0.3-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 21'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
