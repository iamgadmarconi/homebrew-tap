class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.7/tuna-1.1.7-darwin-arm64.tar.gz"
      sha256 "d3e6663f40fdec8685b7f734fedcca0d7e35d2df7994092c582e397fba783701"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.7/tuna-1.1.7-darwin-x86_64.tar.gz"
      sha256 "5da9b45d6a3f7e88f4ef5698e93ffa58fce74f6968e4e73d3cd779eb8716d07b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.7/tuna-1.1.7-linux-arm64.tar.gz"
      sha256 "6a0d3a458662f0320d3d11fda7342ece24d9f1c27dd72c140c1df569db85ca72"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.7/tuna-1.1.7-linux-x86_64.tar.gz"
      sha256 "afba47ba2d8b5dc8a8af769c5e97b2ed01c009a9bff9c039ac89d24c262e95b4"
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
