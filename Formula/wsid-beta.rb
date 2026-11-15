class WsidBeta < Formula
  desc "Offline task manager that ranks what to do next (beta channel, separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.1.1-beta.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.15/wsid-aarch64-apple-darwin-v0.1.1-beta.15.tar.gz"
      sha256 "dd05e453bcdd91803a5e8a1c4e5d84c4bd7dff2d5e7b5a6c8eb4808a7c2dc4d9"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.15/wsid-x86_64-apple-darwin-v0.1.1-beta.15.tar.gz"
      sha256 "31d5d280b105f4516354f71b4c7faeadd51b2470e6f2776a55109ff7fb11a240"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.15/wsid-aarch64-unknown-linux-musl-v0.1.1-beta.15.tar.gz"
      sha256 "c808ed7c96993394d975fa7f34e78c35447f6e55ddc6d6e312c86a111eb899c6"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.15/wsid-x86_64-unknown-linux-musl-v0.1.1-beta.15.tar.gz"
      sha256 "6acda97af8c4716e533a12ee623c207dcd37ba92a2682ad83ca40d5fff8499c2"
    end
  end

  def install
    bin.install "wsid" => "wsid-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid-beta --version")
  end
end
