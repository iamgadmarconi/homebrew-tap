cask "fish-app" do
  version "1.0.0-rc.14"
  sha256 "0f1fa554045f9f25883b226b62d0312b22b0b526369574dc58c044a67c0347ba"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.14/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  auto_updates true
  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
