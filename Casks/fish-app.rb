cask "fish-app" do
  version "1.0.0-rc.2"
  sha256 "263bd14f8dd75f114931535c3cae1564d12696bf89ab87056b01a743f0651ad0"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.2/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
