cask "fish-app" do
  version "1.0.0-rc.24"
  sha256 "ad47566783630097422f6dc1bac96beb02c460802fbb07b818c312fc5da4db22"

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
