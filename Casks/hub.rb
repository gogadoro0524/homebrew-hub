cask "hub" do
  version "0.1.0"
  sha256 "8df8f7814d2aa9663dad62fd9e6ff299d4b24a6be1bc9595ea9427cdb4858b16"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/Hub-#{version}-arm64.zip"
  name "Hub"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://hub-web-phi.vercel.app"

  depends_on arch: :arm64

  app "Hub.app"

  zap trash: [
    "~/Library/Application Support/Hub",
    "~/Library/Caches/com.context-hub.desktop",
    "~/Library/Preferences/com.context-hub.desktop.plist",
    "~/Library/Saved Application State/com.context-hub.desktop.savedState",
  ]
end
