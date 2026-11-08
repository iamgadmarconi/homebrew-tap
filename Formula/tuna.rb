class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.3/tuna-0.3.3-darwin-arm64.tar.gz"
      sha256 "44efc9d31b7f46b8e8fe018d5cd4993e03ecabcf44913912a1129003fcc8129b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.3/tuna-0.3.3-darwin-x86_64.tar.gz"
      sha256 "1dbb4d79b6103e962e55e45ace3ea5f05627c1d0b26fb34266bea2a5a9b59dc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.3/tuna-0.3.3-linux-arm64.tar.gz"
      sha256 "11130df61f4156ca44b4d13bb85421a42f0ff53f22d924dec8cebf36256e2558"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.3/tuna-0.3.3-linux-x86_64.tar.gz"
      sha256 "4002277d409f44389b147e9fe2d7ee4b93aaebacc63bdd4efce0d443f9a15a3c"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.3", shell_output("#{bin}/tuna --version").strip
  end
end
