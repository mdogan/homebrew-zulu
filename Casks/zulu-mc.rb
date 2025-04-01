cask 'zulu-mc' do

  name 'Zulu® Mission Control'
  homepage 'https://www.azul.com/products/components/azul-mission-control/'

  on_intel do
    version '9.1.0.25-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zmc/bin/zmc#{version}-macos_x64.tar.gz",
        referer: 'https://www.azul.com/products/components/azul-mission-control/'

    depends_on macos: '>= :mojave'

    app "zmc#{version}-macos_x64/Azul Mission Control.app"
  end
  on_arm do
    version '9.1.0.25-ca'
    sha256 :no_check

    url "https://cdn.azul.com/zmc/bin/zmc#{version}-macos_aarch64.tar.gz",
        referer: 'https://www.azul.com/products/components/azul-mission-control/'

    depends_on macos: '>= :big_sur'

    app "zmc#{version}-macos_aarch64/Azul Mission Control.app"
  end

end
