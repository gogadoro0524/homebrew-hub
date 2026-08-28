cask "hub" do
  version "0.1.4"
  sha256 "1bdc795f33fb5027331138c9e127014f314022fd20e1eaad6c75efaebf5e6df0"

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
