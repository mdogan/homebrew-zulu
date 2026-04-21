cask 'zulu-jdk17' do

  on_intel do
    version '17.66.19,17.0.19'
    sha256 'e4b403d44b122b2ee6db90bcd293a75eff8891ed1dff8d2adc9f2f09c19ab4ca'

    url 'https://cdn.azul.com/zulu/bin/zulu17.66.19-ca-jdk17.0.19-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '17.66.19,17.0.19'
    sha256 '7e77365033a131316d58f30434ab29fd466482891fe3de799c1e03860500438e'

    url 'https://cdn.azul.com/zulu/bin/zulu17.66.19-ca-jdk17.0.19-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 17'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
