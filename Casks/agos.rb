cask "agos" do
  version "0.1.23"
  sha256 "e2603cf6d1f66f6532e51cb2fdde826569cbc104506ff3bf39a64a2fef0bde49"

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
