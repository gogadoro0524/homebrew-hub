cask "bkgd" do
  version "0.1.15"
  sha256 "a8be6290ea478cc72d31999a1f3b4ce162836c4aade2d80fb7043d0af9ab2322"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/bkgd-#{version}-arm64.zip"
  name "bkgd"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://bkgd.cloud/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "bkgd.app"

  zap trash: [
    "~/Library/Application Support/bkgd",
    "~/Library/Caches/app.bkgd.desktop",
    "~/Library/Preferences/app.bkgd.desktop.plist",
    "~/Library/Saved Application State/app.bkgd.desktop.savedState",
  ]
end
