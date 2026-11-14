class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.6/tuna-1.0.0-rc.6-darwin-arm64.tar.gz"
      sha256 "158b593ec96abb38d37ca8bb51a16a2aabdf6c74b0d4a4c408659fa5fec36199"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.6/tuna-1.0.0-rc.6-darwin-x86_64.tar.gz"
      sha256 "86cff5b2d78ee2f17fa100f3c2d1ce9ce74b7367853c80ffb5b85106124992a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.6/tuna-1.0.0-rc.6-linux-arm64.tar.gz"
      sha256 "0fb3fe65bd598c33dc2c7b6bfb1cf5141b6e3513d359e5c1ad2d2ba1acdacd20"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.6/tuna-1.0.0-rc.6-linux-x86_64.tar.gz"
      sha256 "9cfb184a9515df3c8b6c9fcfb90c8f9dca5191406bdea4ecf28eb96e2fbc6e3f"
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
