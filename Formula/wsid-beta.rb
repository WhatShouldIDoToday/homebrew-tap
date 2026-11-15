class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.1.1-beta.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.14/wsid-aarch64-apple-darwin-v0.1.1-beta.14.tar.gz"
      sha256 "77f51e299fc4f1751c5f8bc7bbf57326b37fbbe0849b48f6dce8dc0f55d686e8"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.14/wsid-x86_64-apple-darwin-v0.1.1-beta.14.tar.gz"
      sha256 "d307aa42428622cecc0ea9a80b9708a7d8d5b9b3c2bacb8fd0b41ecb25f70c60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.14/wsid-aarch64-unknown-linux-musl-v0.1.1-beta.14.tar.gz"
      sha256 "184989dbd5f639d27cbd2024aefbd08fbb61153ad8bcc1c51ef7b9f643d0eada"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.14/wsid-x86_64-unknown-linux-musl-v0.1.1-beta.14.tar.gz"
      sha256 "eea35837896e9ca22be35f3cab1fd9640a376abe9bc5909f2dadd6957faf78d5"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
