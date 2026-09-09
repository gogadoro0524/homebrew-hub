cask "worktory" do
  version "0.1.32"
  sha256 "d370a9a4988342de41ff172db5b68cd30e8785cbdc9a176c8c70f9ef5072b358"

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
