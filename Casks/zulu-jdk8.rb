cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.62.0.19,8.0.332'
    sha256 'd8253f1366121f54858481d65c5a745dc2fda235767dc5138743907d7ed9b171'

    url 'https://cdn.azul.com/zulu/bin/zulu8.62.0.19-ca-jdk8.0.332-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.62.0.19,8.0.332'
    sha256 'ceccc897c9ac7599c211f939350b57c5cfabbdf56a7d55e5f9b2410d523d3c07'

    url 'https://cdn.azul.com/zulu/bin/zulu8.62.0.19-ca-jdk8.0.332-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
