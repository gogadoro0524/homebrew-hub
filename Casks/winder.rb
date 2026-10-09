cask "winder" do
  version "0.1.129"
  sha256 "0c77df506b677b9b7fa6ce3bdd46e5f265642d303a8a141c8783e7f77be6f406"

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
