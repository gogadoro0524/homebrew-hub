cask "bkgd" do
  version "0.1.20"
  sha256 "81363a39e095a458754ed991bc047200051aee0c7dec3fdcd62d6670d436051c"

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
