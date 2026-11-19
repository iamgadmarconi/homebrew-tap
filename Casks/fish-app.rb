cask "fish-app" do
  version "1.0.0-rc.19"
  sha256 "4de66020252a07909a523fb5eb9a389ab848430a28dcbc66d870afe5c7eb67ec"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.19/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  auto_updates true
  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
