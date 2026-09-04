cask "bkgd" do
  version "0.1.17"
  sha256 "b690b8bca69c1dee0858ab308ae4577e8f5007c65f087de919bac14df08dce2e"

  url "https://github.com/gogadoro0524/homebrew-hub/releases/download/v#{version}/bkgd-#{version}-arm64.zip"
  name "bkgd"
  desc "Connect local AI agents, sessions, projects, and services"
  homepage "https://bkgd.cloud/"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "bkgd.app"

  zap trash: [
    "~/Library/Application Support/bkgd",
    "~/Library/Caches/app.bkgd.desktop",
    "~/Library/Preferences/app.bkgd.desktop.plist",
    "~/Library/Saved Application State/app.bkgd.desktop.savedState",
  ]
end
