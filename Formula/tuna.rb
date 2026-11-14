class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.3/tuna-1.0.0-rc.3-darwin-arm64.tar.gz"
      sha256 "56d2de05f99b6b7471f3e17cddbd28590cbad73e0a54af58171c5ebbe66f558b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.3/tuna-1.0.0-rc.3-darwin-x86_64.tar.gz"
      sha256 "41726372b0b5e921cb642979f7ee6346fb87addc6d1aa11faaf8cd95ac726780"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.3/tuna-1.0.0-rc.3-linux-arm64.tar.gz"
      sha256 "1ca4df45f2954ac15a9810cc2b5617c73e1836d7353b42c9fa70a50a6ad02d4b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.3/tuna-1.0.0-rc.3-linux-x86_64.tar.gz"
      sha256 "6c9edcea9248bd0826be680108deb7a78003101caf9aa0abab000e4dc76a3f1c"
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
