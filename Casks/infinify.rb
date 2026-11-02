cask "infinify" do
  version "0.2.5"
  sha256 "df873fdcd59fc473d59704fd1832df033d23991ec17fbcaf70d04e37bcae79f4"

  url "https://github.com/iamgadmarconi/infinify/releases/download/v#{version}/Infinify-#{version}.dmg"
  name "Infinify"
  desc "Infinite canvas desktop, ported from DriftWM"
  homepage "https://github.com/iamgadmarconi/infinify"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Infinify.app"

  # brew upgrade runs uninstall too (all but signal): quit lets the new copy replace a running one,
  # and brew opens it again afterwards. Taking the login item and the launch daemon away is for a real
  # removal only, so it is zap's.
  uninstall quit: "com.marengox.infinify"

  zap early_script: {
        executable:   "#{appdir}/Infinify.app/Contents/MacOS/Infinify",
        args:         ["uninstall", "--leave-app"],
        must_succeed: false,
      },
      trash:        "~/Library/Application Support/Infinify"

  caveats <<~CAVEATS
    Open Infinify to set it up. Compositor mode, where your real windows live on the canvas, needs System Integrity
    Protection partly relaxed in Recovery; setup shows the steps, and runs a demo until then.
  CAVEATS
end
