cask "worktory" do
  version "0.1.26"
  sha256 "2a0cd2cbbc5b736e76287dae277a922203145d4188c9928fc220bbda03e11c59"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/worktory-#{version}-arm64.zip"
  name "worktory"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://worktory.cloud/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "worktory.app"

  zap trash: [
    "~/Library/Application Support/worktory",
    "~/Library/Caches/app.worktory.desktop",
    "~/Library/Preferences/app.worktory.desktop.plist",
    "~/Library/Saved Application State/app.worktory.desktop.savedState",
  ]
end
