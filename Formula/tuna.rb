class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.2/tuna-1.0.2-darwin-arm64.tar.gz"
      sha256 "51069826bd92081629180e5dbae5e3125ea0d74e453d0322433cb44991985fa5"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.2/tuna-1.0.2-darwin-x86_64.tar.gz"
      sha256 "3d3953a447031edc5adc5905e0eda5b630ea5e7e2f03aa3f43e2a4a469b054b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.2/tuna-1.0.2-linux-arm64.tar.gz"
      sha256 "88370c9f602c119a1d8bc4616bad8525489bea5b7571a259f757c1d80365d628"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.2/tuna-1.0.2-linux-x86_64.tar.gz"
      sha256 "ad7428ed26c701ba2f17e08e7dd505ef6507114277195f29161c591832a0a458"
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
