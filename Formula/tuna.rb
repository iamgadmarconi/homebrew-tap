class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.3/tuna-0.2.3-darwin-arm64.tar.gz"
      sha256 "5a5175c77c0a3c0c63c8449b41d222f0f6cdd6ab4e9015c6ffcadf97ef11a2fe"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.3/tuna-0.2.3-darwin-x86_64.tar.gz"
      sha256 "7786022647ad7172ad981e145198b629193990fa09eea4db9590b2966e95e3ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.3/tuna-0.2.3-linux-arm64.tar.gz"
      sha256 "ca376640618ef745299c3d917b257f872d1316cecef3f9e8f96ac0364ae99911"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.3/tuna-0.2.3-linux-x86_64.tar.gz"
      sha256 "f1caeb76368ad73744011ed4e714fc8f8de017f301e2e7522464fc1375cbf5a8"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.2.3", shell_output("#{bin}/tuna --version").strip
  end
end
