class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.1/tuna-1.1.1-darwin-arm64.tar.gz"
      sha256 "2dd699289cbea91cf845c63891c3b88044c89cbffaf3f89eb569e41fc6cc11c3"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.1/tuna-1.1.1-darwin-x86_64.tar.gz"
      sha256 "77d5285a4ca4f87bca91cffc2fac8e3f24577e5da382b1b30633696a4ef3f3aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.1/tuna-1.1.1-linux-arm64.tar.gz"
      sha256 "2a1acd31f661c580a80369fdf8398dbe54fe9111f666d9c11c95d886126bd32e"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.1/tuna-1.1.1-linux-x86_64.tar.gz"
      sha256 "7f758dbfd0e6c95cacea4a0728dd95dababa7a4def1fdd173be62ea3a54b6b7d"
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
