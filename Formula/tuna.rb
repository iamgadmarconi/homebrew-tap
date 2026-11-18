class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.18/tuna-1.0.0-rc.18-darwin-arm64.tar.gz"
      sha256 "cf3da9bb1a68283566f03363b999869e53b1e67be840fcdc613167815db7456c"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.18/tuna-1.0.0-rc.18-darwin-x86_64.tar.gz"
      sha256 "0605bb1e18cb7c7ec6805be4fb351d1c2e145759e901671b030008eca8a4e1d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.18/tuna-1.0.0-rc.18-linux-arm64.tar.gz"
      sha256 "87f52ec83bc527433dee6b7a6cd67f8f89f8b58e88d58e48d5524950173340f6"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.18/tuna-1.0.0-rc.18-linux-x86_64.tar.gz"
      sha256 "a34a1cbe4aad496196b043c70cc29d310df4b64c4809f642e39f299c29d73076"
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
