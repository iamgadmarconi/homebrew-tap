class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.4/tuna-1.1.4-darwin-arm64.tar.gz"
      sha256 "ce2d7c4d9a9c6ed0952c492757c1e50c3407f7b31071572434f13cd3350c2dbf"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.4/tuna-1.1.4-darwin-x86_64.tar.gz"
      sha256 "d7876bee13ca64be65df68889006619cb75c122ecb871cfe55f9f2e0b6695c62"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.4/tuna-1.1.4-linux-arm64.tar.gz"
      sha256 "1599ee703ba5b57e4c6adabdca285a2b154648cdf329835c2b1783ce3969a1f8"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.4/tuna-1.1.4-linux-x86_64.tar.gz"
      sha256 "31f3ad30e5c8e48dfee9514bd2b60286ea567cb1f0660e90145de8b8784ab2ce"
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
