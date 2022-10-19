cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.38.21,17.0.5'
    sha256 'eb3b4e8e8155ac7ad1e46b2f2715ebcc9059c0a657c88f0babddb126a8773290'

    url 'https://cdn.azul.com/zulu/bin/zulu17.38.21-ca-jdk17.0.5-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.38.21,17.0.5'
    sha256 '73b0732f78726acca5ad8ceb1e43898d8c7982c4debc24e88b4fcd12d6e8c07a'

    url 'https://cdn.azul.com/zulu/bin/zulu17.38.21-ca-jdk17.0.5-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
