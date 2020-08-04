cask 'zulu-mc' do
    version '7.1.1.77-ca'
    sha256 :no_check

    url "https://static.azul.com/zmc/bin/zmc#{version}-macos_x64.tar.gz",
        referer: 'https://www.azul.com/products/zulu-mission-control/'
    name 'Zulu® Mission Control'
    homepage 'https://www.azul.com/products/zulu-mission-control/'

    depends_on macos: '>= :high_sierra'

    app "zmc#{version}-macos_x64/Zulu Mission Control.app"
  end
