cask "blueberry" do
  version "0.1.55"
  sha256 "d6f32797292f989244468a9d7830feba38522eecb808ec5900d56f977a6df0a7"

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
