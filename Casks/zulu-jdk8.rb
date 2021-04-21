cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.0.292,8.54.0.21'
    sha256 'a60a31b33a8386f9b446cad2615e33d0190eb0f18cdf8d6812b74fd6e0f4f716'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_x64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :high_sierra'
  else
    version '8.0.292,8.54.0.21'
    sha256 '78bfc25d73568f94a2f3f46be4ef2f4723250f8a7b3691e68f33528e7517d2d4'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"

end
