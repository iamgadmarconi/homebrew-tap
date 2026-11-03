class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.0/tuna-0.2.0-darwin-arm64.tar.gz"
      sha256 "80be6f06462eaf2110f4dbec03baa5ffdbcd2f51201f10e5b64e1f2ad4b5c17a"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.0/tuna-0.2.0-darwin-x86_64.tar.gz"
      sha256 "0b80f5e4627a2032c6abadbbc9b11caa636e2002ba59811f7dc4f144e9a90f21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.0/tuna-0.2.0-linux-arm64.tar.gz"
      sha256 "0bf2c87ee11a019a425d478dff5d6389cd0dff15c8dc490bcc8f6bc951caaaf6"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.0/tuna-0.2.0-linux-x86_64.tar.gz"
      sha256 "baac069265aca707a86a9bf1651af6421b4444321137f76f6a2c356a8680e1f6"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.2.0", shell_output("#{bin}/tuna --version").strip
  end
end
