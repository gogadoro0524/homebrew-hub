cask "winder" do
  version "0.1.180"
  sha256 "f94d82a115abb5371f48a77f5c24ee5e82750b8a0f9016ff64969cb79de16bab"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/winder-#{version}-arm64.zip"
  name "Winder"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://usewinder.com/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Winder.app"

  zap trash: [
    "~/Library/Application Support/winder",
    "~/Library/Caches/com.nika.winder",
    "~/Library/Caches/com.nika.winder.ShipIt",
    "~/Library/Preferences/com.nika.winder.plist",
    "~/Library/Saved Application State/com.nika.winder.savedState",
  ]
end
