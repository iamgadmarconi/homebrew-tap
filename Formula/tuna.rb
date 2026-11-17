class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.14/tuna-1.0.0-rc.14-darwin-arm64.tar.gz"
      sha256 "1a767900153742007ef7abb3642ebf214e223ce86373b6dd195f6d62ca536a06"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.14/tuna-1.0.0-rc.14-darwin-x86_64.tar.gz"
      sha256 "dbc0ea6c9bfda7f17eab0f74d5fadba4f74de4be8ae560374708e2e3620d9098"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.14/tuna-1.0.0-rc.14-linux-arm64.tar.gz"
      sha256 "7a7ac5940abe165fe99bc2b2879e0dc68435bb4158ce947c4ee662e107d4037e"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.14/tuna-1.0.0-rc.14-linux-x86_64.tar.gz"
      sha256 "88778a4c98e6a99656f4a2569dd661fd6314798c74e614ae04ab82a412fb4f67"
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
