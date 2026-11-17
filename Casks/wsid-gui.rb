cask "wsid-gui" do
  version "0.2.2"
  sha256 "e2acef7d8526ad13ac66e148f3a8ef2f05eda66bc5a9f5289a678d377837bf9a"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v#{version}/WSID_#{version}_universal.dmg"
  name "WSID"
  desc "Offline task manager that ranks what to do next"
  homepage "https://github.com/WhatShouldIDoToday/WSID"

  depends_on :macos

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
