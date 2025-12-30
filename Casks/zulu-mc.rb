cask "zulu-mc" do
  on_arm do
    version "9.1.0.25-ca"
    sha256 :no_check

    url "https://cdn.azul.com/zmc/bin/zmc#{version}-macos_aarch64.tar.gz",
        referer: "https://www.azul.com/products/components/azul-mission-control/"

    app "zmc#{version}-macos_aarch64/Azul Mission Control.app"
  end
  on_intel do
    version "9.1.0.25-ca"
    sha256 :no_check

    url "https://cdn.azul.com/zmc/bin/zmc#{version}-macos_x64.tar.gz",
        referer: "https://www.azul.com/products/components/azul-mission-control/"

    app "zmc#{version}-macos_x64/Azul Mission Control.app"
  end

  name "Zulu® Mission Control"
  desc "Tools to manage, monitor, profile and troubleshoot Java applications"
  homepage "https://www.azul.com/products/components/azul-mission-control/"
end
