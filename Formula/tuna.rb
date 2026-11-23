class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.1/tuna-1.0.1-darwin-arm64.tar.gz"
      sha256 "61df8c8d2adab197216334be1efa4efad760d7a20f8a19785ce879f5ac3320ca"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.1/tuna-1.0.1-darwin-x86_64.tar.gz"
      sha256 "8a7cd1d54e6aae249cbb3c0721ea39b770116b92de28ce89435ac101a4b6b24e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.1/tuna-1.0.1-linux-arm64.tar.gz"
      sha256 "a09644fd4ba13b3059ae42c6d19633c6b5b9705677283d879fd5f0f8e5f48b47"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.1/tuna-1.0.1-linux-x86_64.tar.gz"
      sha256 "42c0b38990019d37b74a8e6f7896f1fc644e0330f2f5801f2cf74fdccdc2f87f"
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
