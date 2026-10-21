cask "winder" do
  version "0.1.176"
  sha256 "51c48f3615f99630fb72d5a558a4379b603d7be7a8a6622a29b37fbc44dbf7ec"

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
