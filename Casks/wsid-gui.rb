cask "wsid-gui" do
  version "0.2.1"
  sha256 "f465d0ba2c54922a545fa65bdc521b8d8a476fabe8580fa7151caa9e576714bb"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.1/WSID_0.2.1_universal.dmg"
  name "WSID"
  desc "Offline task manager that ranks what to do next"
  homepage "https://github.com/WhatShouldIDoToday/WSID"

  app "WSID.app"

  # User data stays unless the user runs `brew uninstall --zap`.
  zap trash: [
    "~/Library/Application Support/io.github.whatshouldidotoday.wsid",
    "~/Library/Application Support/wsid",
    "~/Library/Caches/io.github.whatshouldidotoday.wsid",
    "~/Library/Saved Application State/io.github.whatshouldidotoday.wsid.savedState",
    "~/Library/WebKit/io.github.whatshouldidotoday.wsid",
  ]
end
