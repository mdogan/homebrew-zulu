cask 'zulu-jdk15' do

  if Hardware::CPU.intel?
    version '15.32.15,15.0.3'
    sha256 'e061cf2509fcb2dbe135a553cbc3f36704e63ab6418c7429bbc138664ada33c0'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '15.32.15,15.0.3'
    sha256 'b3ef089a99b8ea49efe2e0665493b161970b7b6554611a126586a7882acef605'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
