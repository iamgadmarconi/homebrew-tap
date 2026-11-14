class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.8/tuna-1.0.0-rc.8-darwin-arm64.tar.gz"
      sha256 "71cfded01ff5e3d3d64d7ae68636b5d72b3e48099d67394f4daee2ac2e04cc61"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.8/tuna-1.0.0-rc.8-darwin-x86_64.tar.gz"
      sha256 "86cc245d5ae6d63c2fe39ea5f092d310bab6d48df1fb08e736c08c824e10e82d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.8/tuna-1.0.0-rc.8-linux-arm64.tar.gz"
      sha256 "16b398669052fa8a102bdd1a6ba4cb29ea06b883989478a9f07554357a440c38"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.8/tuna-1.0.0-rc.8-linux-x86_64.tar.gz"
      sha256 "36cfb21036ae0fe47b3869c656b0772aea5fb64f6c5225f792afa47027e420b3"
    end
  end

  def install
    bin.install "tuna"
    bin.install "tuna-desktop" if OS.mac?
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  # No service: Fish and the CLI share tuna's own daemon lifecycle.
  # Linux archives have no desktop host and no x264 runtime dependency.
end
