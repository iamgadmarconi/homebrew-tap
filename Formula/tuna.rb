class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.0/tuna-0.1.0-darwin-arm64.tar.gz"
      sha256 "51dca9f342788d2037cb9c3bbc8444beca5066fc4139d4b181618473856ce440"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.0/tuna-0.1.0-darwin-x86_64.tar.gz"
      sha256 "d87264ef08c8e6d8a06c8cb46d081f0a5e628c5c9e954bba71a5b3f4197f52eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.0/tuna-0.1.0-linux-arm64.tar.gz"
      sha256 "2c3874e62face67b757696d033af747fdb9f702b5391ac55ec22790a0eb139ef"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.0/tuna-0.1.0-linux-x86_64.tar.gz"
      sha256 "b2f54d0134ab89d1849fdb4e51a92745ed48b6bcc283b74f2febed0df8d7ef65"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.1.0", shell_output("#{bin}/tuna --version").strip
  end
end
