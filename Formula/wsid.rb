class Wsid < Formula
  desc "Offline task manager that ranks what to do next (terminal, CLI, and MCP server)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.1/wsid-aarch64-apple-darwin-v0.2.1.tar.gz"
      sha256 "6a010642f676dce04afe4651d18707efc6296700a36b1527bbc191aada8c1a42"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.1/wsid-x86_64-apple-darwin-v0.2.1.tar.gz"
      sha256 "17faff58317de558a115f3dc4610e961531970356a839d01043c679d23772f31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.1/wsid-aarch64-unknown-linux-musl-v0.2.1.tar.gz"
      sha256 "6df5f985abb0f4c25b3b24c2f11b5df5bcbb1a7dfb28b3e4a05c94b0232a497b"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.1/wsid-x86_64-unknown-linux-musl-v0.2.1.tar.gz"
      sha256 "22d75b4fc5a75c609db3a9efef02f4d2474315b53cbccd23028ca7356064896d"
    end
  end

  def install
    bin.install "wsid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid --version")
  end
end
