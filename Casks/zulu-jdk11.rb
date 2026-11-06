cask 'zulu-jdk11' do

  on_intel do
    version '11.92.113,11.0.33'
    sha256 '2ab37d3ecbf9d23f8ba982d5a3b9733750c4be51034bc810b0ecc5a68ae33b97'

    url 'https://cdn.azul.com/zulu/bin/zulu11.92.113-ca-jdk11.0.33-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '11.92.113,11.0.33'
    sha256 'ed8b59e9ba0386c1f924def25e8783f506e8452a6518eb3c7cc75c3d15693b1a'

    url 'https://cdn.azul.com/zulu/bin/zulu11.92.113-ca-jdk11.0.33-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 11'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
