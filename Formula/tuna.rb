class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.3/tuna-0.1.3-darwin-arm64.tar.gz"
      sha256 "9d00b80149b7bf41559cffa5e4402a38ea9d92d2aa70a66a1c3472293960b157"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.3/tuna-0.1.3-darwin-x86_64.tar.gz"
      sha256 "0493ad727923a0fade83fa25cdf096eef950467d1511a955982c649f54fe6097"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.3/tuna-0.1.3-linux-arm64.tar.gz"
      sha256 "c181183922e77b0f2e8267e9b6c715b41618db05e0dcc96206324e884a26e3cb"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.3/tuna-0.1.3-linux-x86_64.tar.gz"
      sha256 "88d8427f256f2d327f98ad3f3ab544158a31e8ac4c40484d4a7ee7ef840f905c"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.1.3", shell_output("#{bin}/tuna --version").strip
  end
end
