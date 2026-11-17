class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.15/tuna-1.0.0-rc.15-darwin-arm64.tar.gz"
      sha256 "dfc0c324ed3ff1008763d6765aa929a6735568c94d019d1e5b4d957ad32c0320"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.15/tuna-1.0.0-rc.15-darwin-x86_64.tar.gz"
      sha256 "8c46577e9a4aadf27a8739186b27c00720aafbbeee577f67a8a17c6233181e31"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.15/tuna-1.0.0-rc.15-linux-arm64.tar.gz"
      sha256 "65a6ca0f5dbf6d4a0c9345b0fea3d8cd43a696f24b05fcd58033055ec8baa644"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.15/tuna-1.0.0-rc.15-linux-x86_64.tar.gz"
      sha256 "18778dacb63948c3a3567f730b03f0315cfccb6e45f26874831d84c4d1bdb6a3"
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
