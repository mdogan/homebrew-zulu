cask 'zulu-mc' do
    version '8.1.0.42-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zmc/bin/zmc#{version}-macos_x64.tar.gz",
        referer: 'https://www.azul.com/products/zulu-mission-control/'
    name 'Zulu® Mission Control'
    homepage 'https://www.azul.com/products/zulu-mission-control/'

    depends_on macos: '>= :high_sierra'

    app "zmc#{version}-macos_x64/Azul Mission Control.app"

  end
