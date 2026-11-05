class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.1.1-beta.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.4/wsid-aarch64-apple-darwin-v0.1.1-beta.4.tar.gz"
      sha256 "af94b6a51b2191b49572a5715eb00d4eb43b1acc7baf76a3f20c81be9d5062bd"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.4/wsid-x86_64-apple-darwin-v0.1.1-beta.4.tar.gz"
      sha256 "62f5456fc268b3b592299b819c8d1a40b175d6367df62270f819e32fad6223cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.4/wsid-aarch64-unknown-linux-musl-v0.1.1-beta.4.tar.gz"
      sha256 "5f29280c7eaadf7557ffb17666e2fc0fdb0bfbbb60422abd2cfd499d5b257c57"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.4/wsid-x86_64-unknown-linux-musl-v0.1.1-beta.4.tar.gz"
      sha256 "502eeea8af581f19012a98839d3387f632da98e730c5d7f669ba8132b6811630"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
