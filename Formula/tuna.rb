class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.34"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.34/tuna-1.0.0-rc.34-darwin-arm64.tar.gz"
      sha256 "34f43c0c2ddf91770e92299c8cddbb21468f3c96d674951b6dbc4bea1b35a6f0"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.34/tuna-1.0.0-rc.34-darwin-x86_64.tar.gz"
      sha256 "8369c6e2caf98d39121ea8ec80a6617024387e0f1480f71d460558bfb5cfc7cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.34/tuna-1.0.0-rc.34-linux-arm64.tar.gz"
      sha256 "64a4f91b4d8876d0d47f57b1cb5e1e7a927fcb47e5295254a7e3506c8c3ba4b1"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.34/tuna-1.0.0-rc.34-linux-x86_64.tar.gz"
      sha256 "f85100fa3f6c9203d3ea36d26e3530ad65bacf061543b8818833c7f6c5aa4f8f"
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
