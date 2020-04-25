cask 'zulu-jdk15ea' do
  version '15.0.43,15.0.0-ea.19'
  sha256 '0ab50623e55706e8567c0d6ed52bd795b4a1bc889dfc97be74ff361e5da6f4a7'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ea-jdk#{version.after_comma}-macosx_x64.tar.gz",
      referer: 'https://www.azul.com/downloads/zulu-community/'
  name 'Azul Zulu® JDK 15 EA'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  depends_on macos: '>= :high_sierra'

  artifact target: "/Library/Java/JavaVirtualMachines/zulu-jdk-#{version.before_comma}.jdk"
end
