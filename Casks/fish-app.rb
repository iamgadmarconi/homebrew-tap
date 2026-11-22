cask "fish-app" do
  version "1.0.0"
  sha256 "3ec3985265f38ffe4f077afc74a9faa6b6551a9cd5d917d4f5b6cce8c00a263b"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v#{version}/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  auto_updates true
  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
