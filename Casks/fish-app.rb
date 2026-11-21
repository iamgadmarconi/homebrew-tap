cask "fish-app" do
  version "1.0.0-rc.30"
  sha256 "1b6dc9f1a75bc355b24bd3166a4894b96816c934a977c0f60c13ad40ee235f23"

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
