class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.2/tuna-0.1.2-darwin-arm64.tar.gz"
      sha256 "3249dff783b6aaa74b0291a33225e549d5bdcfeb3b90c65c13f7a059c5d41823"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.2/tuna-0.1.2-darwin-x86_64.tar.gz"
      sha256 "eb3c2a5951a6e1d7cb5b3a735aba9121782f84956ab0e29db0a2e9412d7d5cae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.2/tuna-0.1.2-linux-arm64.tar.gz"
      sha256 "5ef888a3acc4f880de7c4a8d6ea6f087adb998f5954022d6278550525a912a9c"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.2/tuna-0.1.2-linux-x86_64.tar.gz"
      sha256 "eb37406b088833fc6305ce656f070cea87c0ca54f94e3661e309046a35ed8fb9"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.1.2", shell_output("#{bin}/tuna --version").strip
  end
end
