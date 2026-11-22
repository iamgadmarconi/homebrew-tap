class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0/tuna-1.0.0-darwin-arm64.tar.gz"
      sha256 "98accdb9e04ac4d7fa245b216b472687beddf2c773e85ce2c0539ac66c2e9867"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0/tuna-1.0.0-darwin-x86_64.tar.gz"
      sha256 "bc90496af99b699560ca081b15cd50699029288508aaf07cf51443fdd6e15db2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0/tuna-1.0.0-linux-arm64.tar.gz"
      sha256 "235ad6eeea6589050acce3a4d8b1f3bdbdf4eace6861f7020645db8aaccde8f0"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0/tuna-1.0.0-linux-x86_64.tar.gz"
      sha256 "ca396240f95cbe62bb96bbd92ddeeb7fc0ad7dae09fb377a1eb252d74dca3397"
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
