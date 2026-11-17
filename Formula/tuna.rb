class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.16/tuna-1.0.0-rc.16-darwin-arm64.tar.gz"
      sha256 "095cd76066cbc05264dbf0418870967a814ce1806738a717fbf0d4e213281903"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.16/tuna-1.0.0-rc.16-darwin-x86_64.tar.gz"
      sha256 "cb6bd4b7023d5dd01a8a5979aa1d0e170c8121122e53a13a2a4690cd0b02a064"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.16/tuna-1.0.0-rc.16-linux-arm64.tar.gz"
      sha256 "09b7b0343f13c319ce1702ef063352c05ec179419b3fb23bbe19ec39dcc14a62"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.16/tuna-1.0.0-rc.16-linux-x86_64.tar.gz"
      sha256 "2dc4ecef548ea8b886989bea07de4de9a843d85b9f93f075e454b31616ffceb4"
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
