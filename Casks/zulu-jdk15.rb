cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.29.15,15.0.2'
    sha256 '6284c7fb89cbbc8552788a3db522f6226a64d84454d21e075558c050328f6ed7'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '15.29.15,15.0.2'
    sha256 '599c3399eb6edb824f4660ba0a4fbb52118458041700dc71aec891bd383910e5'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
