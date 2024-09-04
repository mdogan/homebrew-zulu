cask 'zulu-jdk15' do

  on_intel do
    version '15.46.17,15.0.10'
    sha256 '9e8a2b162826af9ac9db248e4c9e7a8983bbe31ae63686a19a3c291770f9427c'

    url 'https://cdn.azul.com/zulu/bin/zulu15.46.17-ca-jdk15.0.10-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  end
  on_arm do
    version '15.46.17,15.0.10'
    sha256 'f5d123cd149f245792d0d807086f4c58c493bd52db8162ed2d2609f97e493ac1'

    url 'https://cdn.azul.com/zulu/bin/zulu15.46.17-ca-jdk15.0.10-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 15.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.15'
end
