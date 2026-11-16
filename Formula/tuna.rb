class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.12/tuna-1.0.0-rc.12-darwin-arm64.tar.gz"
      sha256 "0b50f8d834140045fce12cb955280802d6a54a633f50fd7889cc0c931bd403f5"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.12/tuna-1.0.0-rc.12-darwin-x86_64.tar.gz"
      sha256 "f69ccf0c89589d0fd82ec4c0bd49aa6ac553918faede4d51618e21ce4db88683"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.12/tuna-1.0.0-rc.12-linux-arm64.tar.gz"
      sha256 "a7b35fdf849b34c3926db9b260574868d820cff8f85a5c2c5cc00bf85e82f352"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.12/tuna-1.0.0-rc.12-linux-x86_64.tar.gz"
      sha256 "ccdc767f565560dc38f645945e68b48425a78ac60795eeb06d8dd953bd64b3a2"
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
