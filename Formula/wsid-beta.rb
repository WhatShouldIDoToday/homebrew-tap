class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.3-beta.22/wsid-aarch64-apple-darwin-v0.2.3-beta.22.tar.gz"
      sha256 "51dc0db0f0b72815ef99a605ab0c5481bd24c679f5b8aa2d58c23f83bc7c6219"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.3-beta.22/wsid-x86_64-apple-darwin-v0.2.3-beta.22.tar.gz"
      sha256 "d21a1023ab770256e9389cea7325a35a03ef261da63ee5e8be72aa24e0e4a78a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.3-beta.22/wsid-aarch64-unknown-linux-musl-v0.2.3-beta.22.tar.gz"
      sha256 "a44fa54e14d19183c82c803804d181d6b1fde6dee4a2ae42ca9050f7e489baae"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.3-beta.22/wsid-x86_64-unknown-linux-musl-v0.2.3-beta.22.tar.gz"
      sha256 "7e2a16cfb112652002acd81a3ea237bf59e9d2cfedbd337cdf983cb35f86fc21"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
