cask "blueberry" do
  version "0.1.56"
  sha256 "554a054cae8b68303bcf673ffa1dc06f5d4d6c8370b0226e7093beb4a3d11bda"

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
