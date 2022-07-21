cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.42.15,15.0.8'
    sha256 '27f19d400458de8414d2844f6f0d5f86d6220c4aea3e58ecd5aa136c3191b41f'

    url 'https://cdn.azul.com/zulu/bin/zulu15.42.15-ca-jdk15.0.8-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '15.42.15,15.0.8'
    sha256 '4093ee1d83f176d561c14980d5e39b869c9c1c61aea50c5914fd857f12e473ac'

    url 'https://cdn.azul.com/zulu/bin/zulu15.42.15-ca-jdk15.0.8-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 15.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.15'
end
