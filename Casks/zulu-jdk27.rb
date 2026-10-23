cask 'zulu-jdk27' do

  on_intel do
    version '27.30.107,27.0.1'
    sha256 'db1075c8a5039decf0f6171b36726f7f41ba7749ea7789466d27c1ee857bf679'

    url 'https://cdn.azul.com/zulu/bin/zulu27.30.107-ca-jdk27.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '27.30.107,27.0.1'
    sha256 '14b7145ec7200a52dfc6f40442895843d70f74dd44f334a3e6dbd964118b6e12'

    url 'https://cdn.azul.com/zulu/bin/zulu27.30.107-ca-jdk27.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 27'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 27.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.27'
end
