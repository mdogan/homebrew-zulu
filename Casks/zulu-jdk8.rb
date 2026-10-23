cask 'zulu-jdk8' do

  on_intel do
    version '8.98.0.107,8.0.512'
    sha256 'e0b20a11b96f95c88af0e4e69c82d4a7be52df439a03e6d5291c54aa6c77f83c'

    url 'https://cdn.azul.com/zulu/bin/zulu8.98.0.107-ca-jdk8.0.512-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end
  on_arm do
    version '8.98.0.107,8.0.512'
    sha256 '0b49c1a648bccd00ffddc3e1da251b901f5c34a9862bd7a5ad8aaa8d5a41df24'

    url 'https://cdn.azul.com/zulu/bin/zulu8.98.0.107-ca-jdk8.0.512-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  end

  name 'Azul Zulu® JDK 8'
  desc 'OpenJDK distribution from Azul'
  homepage 'https://www.azul.com/downloads/?os=macos&package=jdk#zulu'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
