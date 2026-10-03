cask "blueberry" do
  version "0.1.116"
  sha256 "28048921b311a5f91c6845548b27889cc810070defa089796cfcf3a6a69b4808"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/blueberry-#{version}-arm64.zip"
  name "Winder"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://usewinder.com/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Winder.app"

  zap trash: [
    "~/Library/Application Support/blueberry",
    "~/Library/Application Support/worktory",
    "~/Library/Caches/app.worktory.desktop",
    "~/Library/Preferences/app.worktory.desktop.plist",
    "~/Library/Saved Application State/app.worktory.desktop.savedState",
  ]
end
