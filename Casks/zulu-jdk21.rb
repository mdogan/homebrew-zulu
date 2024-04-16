cask 'zulu-jdk21' do

  if Hardware::CPU.intel?
    version '21.34.19,21.0.3'
    sha256 'faa9bfaa393412295e9222cddaedcc5af066236517e3452a3b4323ea8a241df6'

    url 'https://cdn.azul.com/zulu/bin/zulu21.34.19-ca-jdk21.0.3-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '21.34.19,21.0.3'
    sha256 '54f90fd9e89e961eff94246e2afa424fb03c8259fbbfbfe88d13664fd1b5b4e9'

    url 'https://cdn.azul.com/zulu/bin/zulu21.34.19-ca-jdk21.0.3-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 21'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 21.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.21'
end
