cask "fish-app" do
  version "1.0.0-rc.33"
  sha256 "12dc44aadd2ff33cd96fb45a96bb993247dbe716c1c6bd2465efa28e014e1851"

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
