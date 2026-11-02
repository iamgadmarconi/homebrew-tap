class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.6/tuna-0.1.6-darwin-arm64.tar.gz"
      sha256 "b07e809f9c3ab1db38893ae9e18b81fb12664b5b5f76f98f495d4bcbd9edb46d"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.6/tuna-0.1.6-darwin-x86_64.tar.gz"
      sha256 "eab514cd0acd048aa1f97dcd4f3d89734d544003e2b577723c3aca0b8218ca1f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.6/tuna-0.1.6-linux-arm64.tar.gz"
      sha256 "5625e243202a52e75e3c8884486643849168d8ae2ce49a94efb93ba00f8b951f"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.6/tuna-0.1.6-linux-x86_64.tar.gz"
      sha256 "985cbf1666cb95a280ba7e569e399395d8d24f12256c96a2e589f741d52e34c3"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.1.6", shell_output("#{bin}/tuna --version").strip
  end
end
