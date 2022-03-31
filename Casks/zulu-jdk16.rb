cask 'zulu-jdk16' do

  if Hardware::CPU.intel?
    version '16.32.15,16.0.2'
    sha256 '59dcf9c1c5ac4acbf27319c2dfb38fd26c97663dbac1a1d931fb94cec6864de2'

    url 'https://cdn.azul.com/zulu/bin/zulu16.32.15-ca-jdk16.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '16.32.15,16.0.2'
    sha256 'f6c6ff8d6afdb45040ef8dac4b0c0798f4938bd10e82b0edd54bfd58e8b74032'

    url 'https://cdn.azul.com/zulu/bin/zulu16.32.15-ca-jdk16.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 16'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 16.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.16'
end
