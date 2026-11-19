cask "fish-app" do
  version "1.0.0-rc.20"
  sha256 "f8c30ac1076ce1226b736dbc78a52df644243041be5f894d7f55d51edc279713"

  url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/fish-v1.0.0-rc.20/Fish-#{version}.dmg"
  name "Fish"
  desc "Native macOS client for tuna coding agents"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"

  auto_updates true
  depends_on macos: ">= :tahoe"
  app "Fish.app"

  uninstall quit: "dev.ego.fish"
  # Shared ~/.tuna state is deliberately preserved, including on zap.
end
