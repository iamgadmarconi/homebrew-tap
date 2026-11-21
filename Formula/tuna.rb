class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.30"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.30/tuna-1.0.0-rc.30-darwin-arm64.tar.gz"
      sha256 "8f3ef854fb79ca8751a6687a30bcc1aec77ace39791f3b1f7e2534eba733ff7c"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.30/tuna-1.0.0-rc.30-darwin-x86_64.tar.gz"
      sha256 "c0ff173549f2efb619bcc42919659383d3fa8632351fff71dc2a23910f70bc9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.30/tuna-1.0.0-rc.30-linux-arm64.tar.gz"
      sha256 "ec594c450f9395cf4b3a0311b6ee494242f9e34748af524c3253e5e940d38efa"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.30/tuna-1.0.0-rc.30-linux-x86_64.tar.gz"
      sha256 "773acbc0e036a39da7529a5d6de4ff5b5e761ad29a30eb6782fbca47e0622c02"
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
