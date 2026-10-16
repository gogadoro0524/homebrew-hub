cask "blueberry" do
  version "0.1.164"
  sha256 "5567353561e43df3d1e52f0bc4b57562c66f7b5025a480e86a69c17bc34d594c"

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
