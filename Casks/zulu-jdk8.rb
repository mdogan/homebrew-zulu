cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.68.0.19,8.0.362'
    sha256 'f26bbc8f09f44f824fd37d386be5341af8065de5fb0f7d420c6c29b88dd92009'

    url 'https://cdn.azul.com/zulu/bin/zulu8.68.0.19-ca-jdk8.0.362-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.68.0.19,8.0.362'
    sha256 '4ad7ffbf4ab2850b7ea7d69b12724ac23f86066e11f05f8a15b098266d383240'

    url 'https://cdn.azul.com/zulu/bin/zulu8.68.0.19-ca-jdk8.0.362-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
