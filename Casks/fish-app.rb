cask "fish-app" do
  version "1.0.0-rc.13"
  sha256 "0b0846f46699a1c8e072f8161e40881502fb8c7448982be7e7e4019b9876af6b"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.13/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  auto_updates true
  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
