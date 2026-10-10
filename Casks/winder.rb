cask "winder" do
  version "0.1.137"
  sha256 "7cecd1b8d9096ba40e4d7a3a42ae34cb55431825ae819e00ad2fd29e9586cb36"

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
