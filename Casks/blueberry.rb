cask "blueberry" do
  version "0.1.75"
  sha256 "b380977c5a2e8bcac815b76e42aa39cd52c30d79a64709c52f9a3d61f5e14f4b"

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
