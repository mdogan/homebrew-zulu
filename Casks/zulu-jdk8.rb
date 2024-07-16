cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.80.0.17,8.0.422'
    sha256 '9245a081d1a868e84655264c687ba615814ea2dc7ed73586ef7cbf0487f95272'

    url 'https://cdn.azul.com/zulu/bin/zulu8.80.0.17-ca-jdk8.0.422-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.80.0.17,8.0.422'
    sha256 'ac209ca5cdac5386271572bbf287298483d12dd079fe01323d62353ae1418f43'

    url 'https://cdn.azul.com/zulu/bin/zulu8.80.0.17-ca-jdk8.0.422-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
