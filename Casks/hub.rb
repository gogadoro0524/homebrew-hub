cask "hub" do
  version "0.1.8"
  sha256 "38008e4ffa468caaf145e56613d1ffeff41a6d02641902bd1a2489a86ea4bce2"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/argos-#{version}-arm64.zip"
  name "argos"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://noname-os.vercel.app/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "argos.app"

  zap trash: [
    "~/Library/Application Support/Hub",
    "~/Library/Caches/com.context-hub.desktop",
    "~/Library/Preferences/com.context-hub.desktop.plist",
    "~/Library/Saved Application State/com.context-hub.desktop.savedState",
  ]
end
