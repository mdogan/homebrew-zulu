cask 'zulu-jdk11' do

  if Hardware::CPU.intel?
    version '11.72.19,11.0.23'
    sha256 '058a6f3861ab397bfc77e90d88780bd9c2a8bf8ba2962c92774e13462d506994'

    url 'https://cdn.azul.com/zulu/bin/zulu11.72.19-ca-jdk11.0.23-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '11.72.19,11.0.23'
    sha256 'd2e0bb75f039373d277506e885c402d2dfd7541b7c779820d334bbf201114c5a'

    url 'https://cdn.azul.com/zulu/bin/zulu11.72.19-ca-jdk11.0.23-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 11'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 11.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.11'
end
