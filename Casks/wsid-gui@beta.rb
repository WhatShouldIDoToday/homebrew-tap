cask "wsid-gui@beta" do
  version "0.2.2-beta.21"
  sha256 "8a7f9b9252b69fa1b72a86e67e47388d5b537422bad14abcee26122f6e3a071c"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.2-beta.21/WSID.Beta_0.2.2-beta.21_universal.dmg"
  name "WSID Beta"
  desc "Beta channel of the WSID task manager (separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"

  depends_on :macos

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
