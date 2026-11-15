class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.2.2-beta.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.2-beta.21/wsid-aarch64-apple-darwin-v0.2.2-beta.21.tar.gz"
      sha256 "3cabb271c5591e08f90c8e1d1792b2962a2769fc923c266323cb0cbf5b3f908d"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.2-beta.21/wsid-x86_64-apple-darwin-v0.2.2-beta.21.tar.gz"
      sha256 "a280fb47099e9b15da2dcf5dd0797bb9d89290b717f6dfb8f1775cfefbbabb90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.2-beta.21/wsid-aarch64-unknown-linux-musl-v0.2.2-beta.21.tar.gz"
      sha256 "8648fbc80fabf6eb8e65e4e0d655133d900f3061307cc3c4bed65ba114550e89"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.2-beta.21/wsid-x86_64-unknown-linux-musl-v0.2.2-beta.21.tar.gz"
      sha256 "fa9584c93f8a690121ccc6210347bd05970f094e554245b9661998176f4a542c"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
