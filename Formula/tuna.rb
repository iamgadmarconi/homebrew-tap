class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.9/tuna-0.3.9-darwin-arm64.tar.gz"
      sha256 "8605e89637c87a069c85feeb6490961b6e75bc154f6e7f04389508201e47278f"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.9/tuna-0.3.9-darwin-x86_64.tar.gz"
      sha256 "8446e766ce172434ff49f89b04da612a83d9ec28ec94b1e8728a092a3ddfd889"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.9/tuna-0.3.9-linux-arm64.tar.gz"
      sha256 "bb691e2b3d4b6c417ed388c2f66080bf0f972cd2c91563282809070a868e354d"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.9/tuna-0.3.9-linux-x86_64.tar.gz"
      sha256 "bbd0ca456ed70170e3c0ef37469cc604152aef3a983644dc4757a1874dda6963"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.9", shell_output("#{bin}/tuna --version").strip
  end
end
