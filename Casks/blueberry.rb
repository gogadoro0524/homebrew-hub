cask "blueberry" do
  version "0.1.179"
  sha256 "7e2571d14c0ea257f7e527f7a3e00bbf4754f91a3a30952e220cfad4581bdc62"

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
