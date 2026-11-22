class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.35"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.35/tuna-1.0.0-rc.35-darwin-arm64.tar.gz"
      sha256 "5cdf7dad9d742eab79de698196c5f557611fdff0ddc3f41cf795dfec4966b0c7"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.35/tuna-1.0.0-rc.35-darwin-x86_64.tar.gz"
      sha256 "14df51d44e7360a86e2e6854f7caf2d222198eae8ebb20fa357993ada24ad1b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.35/tuna-1.0.0-rc.35-linux-arm64.tar.gz"
      sha256 "db2926c9d77edeb1f980e9cda4ae0b5443af7a21c4b8537a886fc733858bb6ef"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.35/tuna-1.0.0-rc.35-linux-x86_64.tar.gz"
      sha256 "c69fb54b321515c5a8fd18c283ca50d6cbc999e3275021344cf475be928ddd0f"
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
