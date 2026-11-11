class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.7/tuna-0.3.7-darwin-arm64.tar.gz"
      sha256 "91265e954071f1bb8414c57d08ac8acd4d08ff6bcf917fcee5f8b664ca44f2a2"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.7/tuna-0.3.7-darwin-x86_64.tar.gz"
      sha256 "da08de7a2cf54d6780e64868dc66d0ea7c7d5a41146f82117e2455e4ac940319"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.7/tuna-0.3.7-linux-arm64.tar.gz"
      sha256 "44681f5c9a9b65c566ae5c51185f2e1074a154ae8cd10143e9ec5c5674db17e2"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.7/tuna-0.3.7-linux-x86_64.tar.gz"
      sha256 "7b26779722a9094a1afcd5e53aee507d146c6a0e7dd27b2a159ee6720f5a72c3"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.7", shell_output("#{bin}/tuna --version").strip
  end
end
