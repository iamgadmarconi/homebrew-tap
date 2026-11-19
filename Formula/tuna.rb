class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.19/tuna-1.0.0-rc.19-darwin-arm64.tar.gz"
      sha256 "5455a4c2da72ea5903b53743499ca247fb7d291dfacdc21532f941f49fba82a4"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.19/tuna-1.0.0-rc.19-darwin-x86_64.tar.gz"
      sha256 "964e2527c3002659b6ddb10ad7cc2c3a9d77ac4afc470f570ca43101cd81f032"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.19/tuna-1.0.0-rc.19-linux-arm64.tar.gz"
      sha256 "b006b8cd2205de4ffd565d3a34c0312be9c17ce51bc3c8f214f890412e685e93"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.19/tuna-1.0.0-rc.19-linux-x86_64.tar.gz"
      sha256 "9918c9ce17b78cc7d015910479f39d2936190863870fe7f3aa7bc1a7b578d990"
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
