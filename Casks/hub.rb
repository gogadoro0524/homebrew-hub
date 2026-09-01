cask "hub" do
  version "0.1.7"
  sha256 "31b3a3969e77b389f6fa6e35f166316659efdacf8eba424bf1d7dde5243048cf"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/Hub-#{version}-arm64.zip"
  name "Hub"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://noname-os.vercel.app/"

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
