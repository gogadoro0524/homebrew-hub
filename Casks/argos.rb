cask "argos" do
  version "0.1.10"
  sha256 "5e6d2a5d9012dce117583e8816bd0991038c16aac31f1d65cfa5cbec635e66fd"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/argos-#{version}-arm64.zip"
  name "argos"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://noname-os.vercel.app/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "argos.app"

  zap trash: [
    "~/Library/Application Support/argos",
    "~/Library/Caches/app.argos.desktop",
    "~/Library/Preferences/app.argos.desktop.plist",
    "~/Library/Saved Application State/app.argos.desktop.savedState",
  ]
end
