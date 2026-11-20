class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.24"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.24/tuna-1.0.0-rc.24-darwin-arm64.tar.gz"
      sha256 "f8157afda3a68f449dc1324bcc52bf7e6759c6a2eeb6a5e0f5bfb29d90ca25d4"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.24/tuna-1.0.0-rc.24-darwin-x86_64.tar.gz"
      sha256 "e4c5f04009816161e2412942d0b203a88ac45eb74b6a9157033ac5b710257896"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.24/tuna-1.0.0-rc.24-linux-arm64.tar.gz"
      sha256 "1bb37ef5b648a1ec352eaaac04160a6097cfd1182d06539538833b2b219d2dfb"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.24/tuna-1.0.0-rc.24-linux-x86_64.tar.gz"
      sha256 "cad4f767dd99837d2b3cc451bebdd14b59c8025a02939beb20c49ce4b4c74b1e"
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
