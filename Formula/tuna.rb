class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.9/tuna-1.0.0-rc.9-darwin-arm64.tar.gz"
      sha256 "c99546c8c5ce558ceb094712159a1ee3671e530bdba5d0b88960d541233a024b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.9/tuna-1.0.0-rc.9-darwin-x86_64.tar.gz"
      sha256 "16e1e8b53327fb7bf32b98fe96e9798f3f20949091ed43e199785827d9b2a393"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.9/tuna-1.0.0-rc.9-linux-arm64.tar.gz"
      sha256 "566c0bb5b443c680447991a77e15c9cb03bf150e9d8569c28c54560350f299da"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.9/tuna-1.0.0-rc.9-linux-x86_64.tar.gz"
      sha256 "08f2edcd22b766e51b12c117822671688847e73e48dd486dfdddb3664621d707"
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
