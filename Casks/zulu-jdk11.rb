cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.56.19,11.0.15'
    sha256 '65deaf1bd6fcb022e46fd5348fc2ccca539228f0fe92a8ab70aed46665444058'

    url 'https://cdn.azul.com/zulu/bin/zulu11.56.19-ca-jdk11.0.15-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.56.19,11.0.15'
    sha256 '4c1bd3bf3297ba15b6c10c3ab9cadca9babe26093a90ef561be2b45d8a40f6b4'

    url 'https://cdn.azul.com/zulu/bin/zulu11.56.19-ca-jdk11.0.15-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
