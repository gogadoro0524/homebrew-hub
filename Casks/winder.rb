cask "winder" do
  version "0.1.141"
  sha256 "f1f9511c5903c05fa6ca6b360e2791e98e9df53f3d6309be755c18fab26bf0d5"

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
