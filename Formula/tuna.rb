class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.6/tuna-1.1.6-darwin-arm64.tar.gz"
      sha256 "248264ee339f1376f922227627424adbc15a14c839650a27ac3e2bc0bc3e53d7"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.6/tuna-1.1.6-darwin-x86_64.tar.gz"
      sha256 "23567e036a2c065d097e9eba7131d33352804c4652080e0e64e7a00a5abaa932"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.6/tuna-1.1.6-linux-arm64.tar.gz"
      sha256 "732dc04e70f6857a456d21f663511c175bc01708403e3dedfaa8966293326543"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.6/tuna-1.1.6-linux-x86_64.tar.gz"
      sha256 "18d0df0660945db2047eab7cef0aaae67593f79f41fd8856427cb7f323598c46"
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
