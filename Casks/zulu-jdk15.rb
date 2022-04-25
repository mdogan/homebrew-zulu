cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.40.19,15.0.7'
    sha256 '760edff61f708bc41373b576e5b309349bcca843c515ad78fd5981a486e61f4f'

    url 'https://cdn.azul.com/zulu/bin/zulu15.40.19-ca-jdk15.0.7-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '15.40.19,15.0.7'
    sha256 '1f2cd277c804dfe4315e7eb356897b603abe4f53a7e3ec7f97158930dfa6cd8c'

    url 'https://cdn.azul.com/zulu/bin/zulu15.40.19-ca-jdk15.0.7-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 15.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.15'
end
