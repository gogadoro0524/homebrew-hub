cask "worktory" do
  version "0.1.39"
  sha256 "0482a00db9cec6a7f3b8148a8b7afd6b54b6dae49e707856ff07fff09fa73c8a"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/Blueberry-#{version}-arm64.zip"
  name "Blueberry"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://withblueberry.com/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Blueberry.app"

  zap trash: [
    "~/Library/Application Support/worktory",
    "~/Library/Caches/app.worktory.desktop",
    "~/Library/Preferences/app.worktory.desktop.plist",
    "~/Library/Saved Application State/app.worktory.desktop.savedState",
  ]
end
