class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.36"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.36/tuna-1.0.0-rc.36-darwin-arm64.tar.gz"
      sha256 "39b74767ecda19dcee69043bcbe7912b6ce9d78ead509a36424914a3007bea78"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.36/tuna-1.0.0-rc.36-darwin-x86_64.tar.gz"
      sha256 "0227cf1e8c9d2729bf1bf30d39140678765578828979655ffbf2d5be6b23d334"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.36/tuna-1.0.0-rc.36-linux-arm64.tar.gz"
      sha256 "6e0b15ee72d07e5237520d76e2e6e7d27e6fc817c49c8499f2111bb80c99d5f1"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.36/tuna-1.0.0-rc.36-linux-x86_64.tar.gz"
      sha256 "f5aac31d99e4a368765ac0bb98845c324e0dddc3c960680d2ef93a4fca09cd3b"
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
