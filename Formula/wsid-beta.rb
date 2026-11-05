class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.1.1-beta.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.3/wsid-aarch64-apple-darwin-v0.1.1-beta.3.tar.gz"
      sha256 "498d58004a0c0d1ba2afff3f7a13573b195c9fee3672af5844df7bec65975c16"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.3/wsid-x86_64-apple-darwin-v0.1.1-beta.3.tar.gz"
      sha256 "655608ea31a25f8d280911f309c11d3ecf5cb8b8160460df122abcd1d7f17d82"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.3/wsid-aarch64-unknown-linux-musl-v0.1.1-beta.3.tar.gz"
      sha256 "9565a68035f105bffe6d45011b3b683dfd57fc05644ea688fc70d475463226f9"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.3/wsid-x86_64-unknown-linux-musl-v0.1.1-beta.3.tar.gz"
      sha256 "36810669812564ac6dd82f36e58fb251220c77bcea34df132611ff5a00425515"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
