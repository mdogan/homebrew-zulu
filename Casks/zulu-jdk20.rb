cask 'zulu-jdk20' do

  if Hardware::CPU.intel?
    version '20.28.85,20.0.0'
    sha256 'b7978dc81acc7864f7c90034104e3a8d9e4e2d150ee288f175dfdab77438d992'

    url 'https://cdn.azul.com/zulu/bin/zulu20.28.85-ca-jdk20.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '20.28.85,20.0.0'
    sha256 '0529683697ef3e0f0c26aa63dbbb9848b0f359b14c40ed2720adf3459ca539a1'

    url 'https://cdn.azul.com/zulu/bin/zulu20.28.85-ca-jdk20.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 20'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 20.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.20'
end
