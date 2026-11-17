class Wsid < Formula
  desc "Offline task manager that ranks what to do next (terminal, CLI, and MCP server)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.2/wsid-aarch64-apple-darwin-v0.2.2.tar.gz"
      sha256 "01ef6c39980f75bca798df50fdc2387f75eaba8fa0b97bff9425955e56595344"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.2/wsid-x86_64-apple-darwin-v0.2.2.tar.gz"
      sha256 "91f3cb6056cf10fb6805f8afab49f74c0723b0f9ba6b96cfe54dcfd0ebafd112"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.2/wsid-aarch64-unknown-linux-musl-v0.2.2.tar.gz"
      sha256 "f219b0f15eefe53ab86f08be8d0c7eedfb18d69e49cfb296e6d7dd4e3126947e"
    end
    on_intel do
      url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.2/wsid-x86_64-unknown-linux-musl-v0.2.2.tar.gz"
      sha256 "ca79f7b75fd69d7414fc1a8f5837eb457b7e9ffa0c72cbd8eee2ae6c1006f4f0"
    end
  end

  def install
    bin.install "wsid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wsid --version")
  end
end
