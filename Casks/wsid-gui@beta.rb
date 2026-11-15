cask "wsid-gui@beta" do
  version "0.2.1-beta.18"
  sha256 "29b7d8b24b0ec5d9da4aaae8025c4fdd7701c49a5dd5bd7ce83f72d26c3d71be"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.2.1-beta.18/WSID.Beta_0.2.1-beta.18_universal.dmg"
  name "WSID Beta"
  desc "Beta channel of the WSID task manager (separate data)"
  homepage "https://github.com/WhatShouldIDoToday/WSID"

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
