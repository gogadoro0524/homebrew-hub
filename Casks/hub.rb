cask "hub" do
  version "0.1.1"
  sha256 "48ef2bdf5ae051ae9e59061a6a21b5cd44d0f6ee5f58384de6c7d1d3520e3d78"

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
