cask 'zulu-mc' do
    version '7.0.0.49-ca'
    sha256 :no_check

    url "https://static.azul.com/zmc/bin/zmc#{version}-macos_x64.tar.gz",
        referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
    name 'Zulu® Mission Control'
    homepage 'https://www.azul.com/products/zulu-mission-control'

    depends_on macos: '>= :sierra'

    app "zmc#{version}-macos_x64/Zulu Mission Control.app"
  end
