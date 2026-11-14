cask "fish-app" do
  version "1.0.0-rc.4"
  sha256 "745ad65ff77f81f3ad2ed86271307172897eb3261de78ddecae063390f9bb994"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.4/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
