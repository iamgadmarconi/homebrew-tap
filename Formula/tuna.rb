class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.4/tuna-0.1.4-darwin-arm64.tar.gz"
      sha256 "94a82f81fe098d59284aa462ad8f0dc86ab90e42bcb8df2c24cebe94733e8ea1"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.4/tuna-0.1.4-darwin-x86_64.tar.gz"
      sha256 "470ff8d13c6824fc8fba3500b322e7d409acdf77be0afb56edde6e447f5c03d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.4/tuna-0.1.4-linux-arm64.tar.gz"
      sha256 "8389bedb8c9701c103b9adbb8ed2dc97819f36d2771c30d5098b193e37eef9c4"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.4/tuna-0.1.4-linux-x86_64.tar.gz"
      sha256 "e33371fab846590aa90914c0d351f864c0ff2fa6a3a1429e03881c8e46609bf1"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.1.4", shell_output("#{bin}/tuna --version").strip
  end
end
