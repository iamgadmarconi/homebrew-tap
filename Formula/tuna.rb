class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.32"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.32/tuna-1.0.0-rc.32-darwin-arm64.tar.gz"
      sha256 "920e97a5f7eb91533448f04f8fd77cebda2772d8a9a50cd7b44efdf922dcf78b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.32/tuna-1.0.0-rc.32-darwin-x86_64.tar.gz"
      sha256 "ecb203dfafc2607c8dc8aaac311ad934086a36c1fba6183ceaec693c83f819b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.32/tuna-1.0.0-rc.32-linux-arm64.tar.gz"
      sha256 "d06f4a61ff4f137a90e844ee382ee129ad91053cb584f55b101336a318c9e929"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.32/tuna-1.0.0-rc.32-linux-x86_64.tar.gz"
      sha256 "da7a36c13cdd58751ed5c8e91423dfad4ab759d6436bc655f54ab2db2c47d444"
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
