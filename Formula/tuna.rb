class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.17/tuna-1.0.0-rc.17-darwin-arm64.tar.gz"
      sha256 "7f7c0152d1fd9a249d2c8242a8aa619dd443fe0c73eed0c19f7eff0a4f13bc51"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.17/tuna-1.0.0-rc.17-darwin-x86_64.tar.gz"
      sha256 "58cf30ce51a6ebf834ea8cebe1cbd409b59d45a804053158951688eaf999f1ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.17/tuna-1.0.0-rc.17-linux-arm64.tar.gz"
      sha256 "7020d6cdf687f409dfb70d7ab3a4e6bc200b6d58caf3734e6dab2174f624d202"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.17/tuna-1.0.0-rc.17-linux-x86_64.tar.gz"
      sha256 "8e78180445d938800b283da43554aeeaf9e4757931defcac1a8d8ae90b9ab6d6"
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
