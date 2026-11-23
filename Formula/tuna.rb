class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.3/tuna-1.0.3-darwin-arm64.tar.gz"
      sha256 "fd9aeff7745ce05231be01334a4401c5ddeef047f7e8d40bdafba75401a3efad"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.3/tuna-1.0.3-darwin-x86_64.tar.gz"
      sha256 "5ef87e237e66610d6fc3e588e8e60333a1902143367b2f9081cd6f3562343017"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.3/tuna-1.0.3-linux-arm64.tar.gz"
      sha256 "4cc29382696f0c33695f9457bdc20ee744937012f3bbee3f5295f7201fb4b12c"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.3/tuna-1.0.3-linux-x86_64.tar.gz"
      sha256 "147a9f9a5f86e9d6266c63c6f9f8e1513088364f8b404739526238e2ef556bb1"
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
