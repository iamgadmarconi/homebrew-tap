cask "fish-app" do
  version "1.0.4"
  sha256 "238f48d39c3cc794206cc05df7db87103004de7aedce281f0f61cf03e336f3ba"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/fish-v#{version}/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  auto_updates true
  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
