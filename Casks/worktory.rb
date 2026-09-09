cask "worktory" do
  version "0.1.30"
  sha256 "d58eaa8ca252d387622cf2c7713e670ebd4796f145bdb4660d8f773755972a2b"

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
