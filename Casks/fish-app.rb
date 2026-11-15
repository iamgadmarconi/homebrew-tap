cask "fish-app" do
  version "1.0.0-rc.10"
  sha256 "4c1e0c0d28ddd01b86c257b24afb055801d91fb75fc23876684f71c1e1f77235"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/fish-v1.0.0-rc.10/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
