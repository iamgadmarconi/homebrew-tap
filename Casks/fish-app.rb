cask "fish-app" do
  version "1.0.0-rc.25"
  sha256 "7f39caf0b3c9cd487852548a3e28865d0cdcd258f17bbb7acae6d42aa3362629"

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
