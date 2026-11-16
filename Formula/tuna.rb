class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.13/tuna-1.0.0-rc.13-darwin-arm64.tar.gz"
      sha256 "4077aa7ddb168053ae45fbcc56ec82b9ce530aab4418f371b48790dec9e18fcd"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.13/tuna-1.0.0-rc.13-darwin-x86_64.tar.gz"
      sha256 "59081e4889b6492a469484cf7edccb59a529a26c4c2055ce4a7cf7ccb574bdcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.13/tuna-1.0.0-rc.13-linux-arm64.tar.gz"
      sha256 "1c47cfbe1dc811f31e2e81cd914cf226188718eea154196844a411a511bcdcb5"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.13/tuna-1.0.0-rc.13-linux-x86_64.tar.gz"
      sha256 "351b28762654c45fe8e051ae8235cd4103ae6cf88831763bd64c34d2ad4cccb1"
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
