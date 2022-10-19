cask 'zulu-mc' do

  name 'Zulu® Mission Control'
  homepage 'https://www.azul.com/products/zulu-mission-control/'

  if Hardware::CPU.intel?
    version '8.2.1.67-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zmc/bin/zmc#{version}-macos_x64.tar.gz",
        referer: 'https://www.azul.com/products/zulu-mission-control/'

    depends_on macos: '>= :mojave'

    app "zmc#{version}-macos_x64/Azul Mission Control.app"

  else
    version '8.1.1.57-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zmc/bin/zmc#{version}-macos_aarch64.tar.gz",
        referer: 'https://www.azul.com/products/zulu-mission-control/'

    depends_on macos: '>= :big_sur'

    app "zmc#{version}-macos_aarch64/Azul Mission Control.app"
  end  

end
