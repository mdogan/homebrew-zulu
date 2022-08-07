cask 'zulu-jdk8' do

  if Hardware::CPU.intel?
    version '8.64.0.19,8.0.345'
    sha256 '544634829882d81f2b10105838f1db34ace71dd117e01e3b3da52a01b6750840'

    url 'https://cdn.azul.com/zulu/bin/zulu8.64.0.19-ca-jdk8.0.345-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '8.64.0.19,8.0.345'
    sha256 '8e7b33273a9f364394497635d470894458aefef9457c375e58bdc97cdd67df63'

    url 'https://cdn.azul.com/zulu/bin/zulu8.64.0.19-ca-jdk8.0.345-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 8'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 8.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.8'
end
