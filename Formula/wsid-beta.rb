class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.2.1-beta.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.1-beta.18/wsid-aarch64-apple-darwin-v0.2.1-beta.18.tar.gz"
      sha256 "0021651605a87c62528d48bbe75b788df8ed18a058a7f53be2e6fe9eb46c17b9"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.1-beta.18/wsid-x86_64-apple-darwin-v0.2.1-beta.18.tar.gz"
      sha256 "3c6ee235c38bb92c414b4fcd6e0a8cd04a6844c1fa74012d307b68354ba0d0e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.1-beta.18/wsid-aarch64-unknown-linux-musl-v0.2.1-beta.18.tar.gz"
      sha256 "aab1a21b7e9186a64a598c2bf6c41645765cf3913e656f0f4003bbdcff44bef0"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.1-beta.18/wsid-x86_64-unknown-linux-musl-v0.2.1-beta.18.tar.gz"
      sha256 "b18a5547c0a5da379833a72eaecc421b7a0c9cacda1b89f053332a935e269772"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
