class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.5/tuna-1.0.0-rc.5-darwin-arm64.tar.gz"
      sha256 "1f9cf84f3fadce639b8e3ec1725d2718d07ca775e68247e1419755412a9aa569"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.5/tuna-1.0.0-rc.5-darwin-x86_64.tar.gz"
      sha256 "7fb482d1bbda2ada6bf26e263316bb558a2346b93ceec0c1dbf3e77277993e24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.5/tuna-1.0.0-rc.5-linux-arm64.tar.gz"
      sha256 "bdf3daae64b7f6b2ee449a77611da520e31ab2bb5f07c0f62a3581268835728f"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.5/tuna-1.0.0-rc.5-linux-x86_64.tar.gz"
      sha256 "d097d6fc1a1b8d7b290cc6ca6e0b269aecfa162f5bbeac6ac2424781798be11d"
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
