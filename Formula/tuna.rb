class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.6/tuna-0.3.6-darwin-arm64.tar.gz"
      sha256 "fd94c04a8c19362ec8c72f851b955e065c9225718d79fcca78eecd4d2a564cd0"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.6/tuna-0.3.6-darwin-x86_64.tar.gz"
      sha256 "22a014aa4bc2b76d603ff18a5d85bc5a58d048207127dc130b299fce3b304958"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.6/tuna-0.3.6-linux-arm64.tar.gz"
      sha256 "20730d91f92efa2ff852d11df12b7df99b44700f9933cbf8f5dfa5db65f72015"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.6/tuna-0.3.6-linux-x86_64.tar.gz"
      sha256 "20f61076acc41f2a5f263b70a98afe3d5d04b39b24f2fc7b8d6f0ded1c381c05"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.6", shell_output("#{bin}/tuna --version").strip
  end
end
