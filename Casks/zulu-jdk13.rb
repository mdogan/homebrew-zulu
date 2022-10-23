cask 'zulu-jdk13' do

  if Hardware::CPU.intel?
    version '13.52.15,13.0.13'
    sha256 'f49a48687a9443215d46f560b06b87869f217348fc590a7231720ac5b75ad3fa'

    url 'https://cdn.azul.com/zulu/bin/zulu13.52.15-ca-jdk13.0.13-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '13.52.15,13.0.13'
    sha256 '1e4050a8aeaa88af0e5f67e84743a0b205e3ffdb7a78be0cfef666dd969af0a1'

    url 'https://cdn.azul.com/zulu/bin/zulu13.52.15-ca-jdk13.0.13-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 13'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 13.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.13'
end
