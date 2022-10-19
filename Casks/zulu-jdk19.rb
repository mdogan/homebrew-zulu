cask 'zulu-jdk19' do

  if Hardware::CPU.intel?
    version '19.30.11,19.0.1'
    sha256 'cd3669020312b1ff584ddb96a6d270f84f8ec2523d514b26ed188a41c7f280d6'

    url 'https://cdn.azul.com/zulu/bin/zulu19.30.11-ca-jdk19.0.1-macosx_x64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :mojave'
  else
    version '19.30.11,19.0.1'
    sha256 'b90964ba680a64f793c9bd464193f0f37dc81509ffcd52b96526df75fb901ae6'

    url 'https://cdn.azul.com/zulu/bin/zulu19.30.11-ca-jdk19.0.1-macosx_aarch64.dmg',
        referer: 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'
  end

  name 'Azul Zulu® JDK 19'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  pkg 'Double-Click to Install Azul Zulu JDK 19.pkg'

  uninstall pkgutil: 'com.azulsystems.zulu.19'
end
