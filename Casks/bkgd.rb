cask "bkgd" do
  version "0.1.18"
  sha256 "48f21889a92e9081f85c19bb6277501c6c42837c60f22af29cc38cf5d1141358"

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
