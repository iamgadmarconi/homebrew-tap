class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.21/tuna-1.0.0-rc.21-darwin-arm64.tar.gz"
      sha256 "985069bb13d69d3800fd2ae83b128e5a7e3426f1b92b62eb104b7d4257d5d2b0"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.21/tuna-1.0.0-rc.21-darwin-x86_64.tar.gz"
      sha256 "d2dca1063528dfb7f6d64d3ae794eb928532b12fce2ff1ab2a8fe943a0707afd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.21/tuna-1.0.0-rc.21-linux-arm64.tar.gz"
      sha256 "701088a6a7f3cdaa58a09e126d4e983efc035edd26ff0fa7f4e675bc901a9a1b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.21/tuna-1.0.0-rc.21-linux-x86_64.tar.gz"
      sha256 "3ead0729fbb0682177ae5b634db7eb0f82870f218fe44c5b98edbf76b9e68f4e"
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
