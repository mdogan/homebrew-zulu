cask 'zulu-jdk21' do

  if Hardware::CPU.intel?
    version '21.30.15,21.0.1'
    sha256 'f8f46bb00cfb8cecddcf71e10c77a577c9e9843a1e13a35ff05dbeec6f29788f'

    url 'https://cdn.azul.com/zulu/bin/zulu21.30.15-ca-jdk21.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '21.30.15,21.0.1'
    sha256 '92d65ed61bf6c0bea0f9c44a6dd538da8a6c620a78f517c194913d1338fc39e7'

    url 'https://cdn.azul.com/zulu/bin/zulu21.30.15-ca-jdk21.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
