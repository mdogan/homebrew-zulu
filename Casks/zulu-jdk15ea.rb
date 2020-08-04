cask 'zulu-jdk15ea' do
  version '15.0.71,15.0.0-ea.33'
  sha256 'd91882107a8c0526027ac8ee571ca1c51feab07586a96720d799a4b3063694bd'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ea-jdk#{version.after_comma}-macosx_x64.tar.gz",
      referer: 'https://www.azul.com/downloads/zulu-community/'
  name 'Azul Zulu® JDK 15 EA'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  depends_on macos: '>= :high_sierra'

  artifact "zulu#{version.before_comma}-ea-jdk#{version.after_comma}-macosx_x64/zulu-#{version.major}.jdk", target: "/Library/Java/JavaVirtualMachines/zulu-#{version.major}ea.jdk"
end
