cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.58.15,11.0.16'
    sha256 'debf7d2adde7555fe22aab6f7aad2401cc01f279e7ef869a3e9af186b794942e'

    url 'https://cdn.azul.com/zulu/bin/zulu11.58.15-ca-jdk11.0.16-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.58.15,11.0.16'
    sha256 'b87a7d2567e4e0bde7fd631b56d1f1598c0ab4566afbf801d14203dc3e1c9508'

    url 'https://cdn.azul.com/zulu/bin/zulu11.58.15-ca-jdk11.0.16-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
