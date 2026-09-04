cask "bkgd" do
  version "0.1.13"
  sha256 "3e2c7679c07d9d05d25a50d1f3fd65a961b9c4329c31e8ab8cba4fefdbea97de"

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
