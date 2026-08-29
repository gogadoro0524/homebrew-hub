cask "hub" do
  version "0.1.5"
  sha256 "d8f89783b8bbbf77c2c47cb9153550952a51c8738988d9573485b3304d140da7"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/Hub-#{version}-arm64.zip"
  name "Hub"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://hub-web-phi.vercel.app/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Hub.app"

  zap trash: [
    "~/Library/Application Support/Hub",
    "~/Library/Caches/com.context-hub.desktop",
    "~/Library/Preferences/com.context-hub.desktop.plist",
    "~/Library/Saved Application State/com.context-hub.desktop.savedState",
  ]
end
