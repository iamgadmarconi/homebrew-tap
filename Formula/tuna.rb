class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.2/tuna-1.1.2-darwin-arm64.tar.gz"
      sha256 "16aed39a961c0828907d6cdbea7296009f7ca3b2c84d4580235a25e5d2b217df"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.2/tuna-1.1.2-darwin-x86_64.tar.gz"
      sha256 "e70e0290159f669e01d51b61f8fa4f2323c531535a8dd9526b20abe1b3940449"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.2/tuna-1.1.2-linux-arm64.tar.gz"
      sha256 "c607e75c239348cfcdf85f9c28ee162357c60742032d41b531a85af2df18e6d4"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.2/tuna-1.1.2-linux-x86_64.tar.gz"
      sha256 "2bfbe956edf6587bdc45e9c3243898d9d4980a96f9f71478a814ae8cbbb39f6b"
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
