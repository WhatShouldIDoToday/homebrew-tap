cask "wsid-gui" do
  version "0.2.0"
  sha256 "acf14dda747af5237366ac1eec2f4da18c9879377137b33ee1c42ce4cfea0d0e"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/v0.2.0/WSID_0.2.0_universal.dmg"
  name "WSID"
  desc "Offline task manager that ranks what to do next"
  homepage "https://github.com/WhatShouldIDoToday/WSID"

  depends_on macos: ">= :high_sierra"

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
