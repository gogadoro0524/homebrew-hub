cask "worktory" do
  version "0.1.29"
  sha256 "5baf8323bc2bdfa693f94b71c2e621d08cae4a5e44356b93436d0f775ab3ed54"

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
