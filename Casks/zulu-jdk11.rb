cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.45.27,11.0.10'
    sha256 '1c59885634ad438c9b198d31b9dd2aa310922484b3a0ffec603eec1b02eb898e'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '11.45.27,11.0.10'
    sha256 'dd7f76d637fcf692081ae29af8f694d95e82cf30a9aa9ddea26d8e062c65e4f5'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
