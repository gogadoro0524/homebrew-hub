cask "worktory" do
  version "0.1.36"
  sha256 "316d69a5ace6aca1996b298a404153b476f6ab60b38e03fd529569f833b516a4"

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
