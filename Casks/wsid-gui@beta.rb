cask "wsid-gui@beta" do
  version "0.2.3-beta.22"
  sha256 "a7f8de479b6aa6077fbaf695fb130bd544472330f430e21bf429000220551f5b"

  url "https://github.com/WhatShouldIDoToday/WSID/releases/download/beta-v#{version}/WSID.Beta_#{version}_universal.dmg"
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
