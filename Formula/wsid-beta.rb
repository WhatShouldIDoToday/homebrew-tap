class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.1.1-beta.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.12/wsid-aarch64-apple-darwin-v0.1.1-beta.12.tar.gz"
      sha256 "8566d0263c4fe5326eed613625d19168ef2b39385c05e6c0b5bd4c69f8455c4c"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.12/wsid-x86_64-apple-darwin-v0.1.1-beta.12.tar.gz"
      sha256 "91dfbe6d8966ff5d407e042bc765675fb227ee4385816f0ea91eea24d115b173"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.12/wsid-aarch64-unknown-linux-musl-v0.1.1-beta.12.tar.gz"
      sha256 "a8863bfbc5c98a1587ca85a13cde4ed8a03b1f15b0e80b3409da8e7fb7c88e0d"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.12/wsid-x86_64-unknown-linux-musl-v0.1.1-beta.12.tar.gz"
      sha256 "89a2ce7a3c8fe19632f7a1a9ef41358f046903318461424747093761778e6125"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
