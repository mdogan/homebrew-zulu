cask 'zulu-jdk13' do

  if Hardware::CPU.intel?
    version '13.37.21,13.0.6'
    sha256 'c9de14e85b882fdcb65deef263ea43cfb8c3eb603b7f5a7c51214c7e4e16674b'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '13.37.21,13.0.6'
    sha256 '5831abf3669642fdb2f841f4034fe7f2cde7e7c85a04e93a44e49c17e5f5dc7b'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 13'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
