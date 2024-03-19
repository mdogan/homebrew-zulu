cask 'zulu-jdk22' do

  if Hardware::CPU.intel?
    version '22.28.91,22.0.0'
    sha256 '7ca4fb27667b8ed222df4e0f4a384c1b390abf5a7520c690311b4cc24003c50e'

    url 'https://cdn.azul.com/zulu/bin/zulu22.28.91-ca-jdk22.0.0-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '22.28.91,22.0.0'
    sha256 '97f9f95c4674d78d0541cff740795562d3bfb317d3867108f3d7f94689979bd4'

    url 'https://cdn.azul.com/zulu/bin/zulu22.28.91-ca-jdk22.0.0-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 22'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 22.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.22'
end
