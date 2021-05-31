cask 'zulu-jdk16' do

  if Hardware::CPU.intel?
    version '16.30.15,16.0.1'
    sha256 'a9988581a95f00da7768562f19632a71e13b7d695329b074504b8b6883a6dc30'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '16.30.19,16.0.1'
    sha256 '4b00a4675cd2d467af3de06d60821e3cdb25c646e48d0c8a349992f1f8509eab'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 16'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
