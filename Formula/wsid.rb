class Wsid < Formula
  desc "Offline task manager that ranks what to do next (terminal, CLI, and MCP server)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.0/wsid-aarch64-apple-darwin-v0.2.0.tar.gz"
      sha256 "4df69c92556b91176affe0269f86fc4e2ad2e02aa714e3aa68ff7135d4e196e1"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.0/wsid-x86_64-apple-darwin-v0.2.0.tar.gz"
      sha256 "bd2a6dfcc4fc778a48decf8eb5b47544d4d59aeac368d74d043f2f60f48ee0eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.0/wsid-aarch64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "5d93371a111ac85a4a06d96a741c2263677b20e7dcc5779e751259af1295a3f9"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.0/wsid-x86_64-unknown-linux-musl-v0.2.0.tar.gz"
      sha256 "34d4f0ea5d1be8645b04ee191bb9e5fec57f35a6528a2243607a48e82eea9083"
    end
  end

  def install
    bin.install "wsid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid --version")
  end
end
