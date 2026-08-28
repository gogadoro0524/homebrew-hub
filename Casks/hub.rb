cask "hub" do
  version "0.1.2"
  sha256 "6a7f9fc248651e40af5fec8e51d9d59d021160feb1b1a4abd6f6e9515c4f6ac9"

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
