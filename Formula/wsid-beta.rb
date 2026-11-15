class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.1.1-beta.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.11/wsid-aarch64-apple-darwin-v0.1.1-beta.11.tar.gz"
      sha256 "2e6180ddfaccf846730a0d0ef55e7a5e9f9b8b5a816ee00b64eee311a2b64505"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.11/wsid-x86_64-apple-darwin-v0.1.1-beta.11.tar.gz"
      sha256 "cfc443600980bbf41a39040a7c8306161edb6cafd30e39277dc21f0c5e879097"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.11/wsid-aarch64-unknown-linux-musl-v0.1.1-beta.11.tar.gz"
      sha256 "0b2a7af5c48cae12fd6dfad329d6c3bfdbaa8c38199d95737d40ab65d6f97a02"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.11/wsid-x86_64-unknown-linux-musl-v0.1.1-beta.11.tar.gz"
      sha256 "cae794f94ccdfd3702a43ddfd784edfc7a6060113a37f08e93ede151c8b566eb"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
