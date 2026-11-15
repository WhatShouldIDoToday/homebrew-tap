cask "wsid-gui@beta" do
  version "0.1.1-beta.12"
  sha256 "86a545fdfe9a9be9302543483acd683c74846bc8a92c8764a56e8998f5170e33"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v0.1.1-beta.12/WSID.Beta_0.1.1-beta.12_universal.dmg"
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
