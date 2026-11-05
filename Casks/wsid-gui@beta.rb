cask "wsid-gui@beta" do
  version "0.1.1-beta.4"
  sha256 "37cdcbc3399d86eb2f13efd0fd48dc29298cde596e3220e3fd6ff28bf63b6449"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.4/WSID.Beta_0.1.1-beta.4_universal.dmg"
  name "WSID Beta"
  desc "Beta channel of the WSID task manager (separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"

  depends_on macos: ">= :high_sierra"

  app "WSID Beta.app"

  # User data stays unless the user runs `brew uninstall --zap`.
  zap trash: [
    "~/Library/Application Support/io.github.whatshouldidotoday.wsid.beta",
    "~/Library/Application Support/wsid-beta",
    "~/Library/Caches/io.github.whatshouldidotoday.wsid.beta",
    "~/Library/Saved Application State/io.github.whatshouldidotoday.wsid.beta.savedState",
    "~/Library/WebKit/io.github.whatshouldidotoday.wsid.beta",
  ]
end
