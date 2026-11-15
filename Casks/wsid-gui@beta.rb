cask "wsid-gui@beta" do
  version "0.1.1-beta.11"
  sha256 "e1d52cb4ee1de95e654f71b68a8a9aef7af087040200802b80254f6ffe4d98da"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.11/WSID.Beta_0.1.1-beta.11_universal.dmg"
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
