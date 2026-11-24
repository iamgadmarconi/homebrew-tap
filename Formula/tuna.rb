class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.0/tuna-1.1.0-darwin-arm64.tar.gz"
      sha256 "d831b16d94eac04d00109099e9de57e5714e17916b6ac90f81ec75c329d8c41f"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.0/tuna-1.1.0-darwin-x86_64.tar.gz"
      sha256 "900131d58aafad06ae6dbe05f077c27a4f52a99408334583a5cc58a5d3d8ff24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.0/tuna-1.1.0-linux-arm64.tar.gz"
      sha256 "228e3870fa4fccb57b45d0bb810f1f5ed3c729f0b8def28c775fde677f5a0ef9"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.0/tuna-1.1.0-linux-x86_64.tar.gz"
      sha256 "acdcbdfd055b15f59ec46837e80c924c8169046107247e77d98685f5441a292e"
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
