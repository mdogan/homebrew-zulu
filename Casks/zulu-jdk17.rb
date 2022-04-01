cask 'zulu-jdk17' do

  if Hardware::CPU.intel?
    version '17.32.13,17.0.2'
    sha256 '73d9fd535a690c1fdcc9099edbb7f9e9b8897e30573c0be95360e6896804c203'

    url 'https://cdn.azul.com/zulu/bin/zulu17.32.13-ca-jdk17.0.2-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '17.32.13,17.0.2'
    sha256 '74d8e059865fdb8cfbc202bbd93a05c5a67a2d12947b09e30d637dd9b7e4011f'

    url 'https://cdn.azul.com/zulu/bin/zulu17.32.13-ca-jdk17.0.2-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 17'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 17.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.17'
end
