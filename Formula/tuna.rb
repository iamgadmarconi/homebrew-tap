class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.31"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.31/tuna-1.0.0-rc.31-darwin-arm64.tar.gz"
      sha256 "09962f5fcaa6134f6b943e309ce1ca5155c449fbf906d0850644c1fe65c19cb1"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.31/tuna-1.0.0-rc.31-darwin-x86_64.tar.gz"
      sha256 "8ee59eb9255d9db7bf7ca257a8c77578d7c70ef1b4e79b4d74b1e4b4ec6bfed2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.31/tuna-1.0.0-rc.31-linux-arm64.tar.gz"
      sha256 "ac3aabeea6da2753b55a7f51e87394bd155305471d85357f910e5e2815440393"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.31/tuna-1.0.0-rc.31-linux-x86_64.tar.gz"
      sha256 "300b5ab38f31148f802b213b41c25fc3302f1ea7b7ddbe21dbd54ddebd4cd1be"
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
