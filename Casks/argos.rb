cask "argos" do
  version "0.1.9"
  sha256 "944100157f93596e5ce810b6193ee3ef5d08533589f5b3eda2c963c7b48d302f"

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
