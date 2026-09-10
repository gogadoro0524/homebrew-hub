cask "blueberry" do
  version "0.1.44"
  sha256 "e19e2e68cedb6df773a1b77bfb52951d226e02008421fbe9d450e8109899d984"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/blueberry-#{version}-arm64.zip"
  name "blueberry"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://withblueberry.com/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "blueberry.app"

  zap trash: [
    "~/Library/Application Support/blueberry",
    "~/Library/Application Support/worktory",
    "~/Library/Caches/app.worktory.desktop",
    "~/Library/Preferences/app.worktory.desktop.plist",
    "~/Library/Saved Application State/app.worktory.desktop.savedState",
  ]
end
