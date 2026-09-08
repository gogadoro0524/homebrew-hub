cask "agos" do
  version "0.1.23"
  sha256 "34bc7dbf2a6e9a0ad8ba0422c26b7f3e13d4cacfe332698cf4457e34063753d4"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/agos-#{version}-arm64.zip"
  name "agos"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://agos.run/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "agos.app"

  zap trash: [
    "~/Library/Application Support/agos",
    "~/Library/Caches/app.agos.desktop",
    "~/Library/Preferences/app.agos.desktop.plist",
    "~/Library/Saved Application State/app.agos.desktop.savedState",
  ]
end
