cask 'zulu-jdk8' do

  on_intel do
    version '8.90.0.19,8.0.472'
    sha256 '31a7f0c2699979ba3d444c91538a7111e4f7bae9c89011252ba4b8f77774d56e'

    url 'https://cdn.azul.com/zulu/bin/zulu8.90.0.19-ca-jdk8.0.472-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '8.90.0.19,8.0.472'
    sha256 '9088107eb0bd1a7441724e44ff7c3150c21c3176e2873d323ca4a3cd0a550d54'

    url 'https://cdn.azul.com/zulu/bin/zulu8.90.0.19-ca-jdk8.0.472-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
