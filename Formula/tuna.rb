class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.7/tuna-0.1.7-darwin-arm64.tar.gz"
      sha256 "0038bed4d56b395e52af814bd6b0ff192c1d2d5d293a04110770f1000c9ba3d2"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.7/tuna-0.1.7-darwin-x86_64.tar.gz"
      sha256 "c2a0cf9ff498ca5593152860e39e6dd34615bbe50542757e3c225103eaca412f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.7/tuna-0.1.7-linux-arm64.tar.gz"
      sha256 "3d2f4d4c604f15ac1eef35c52abfc828cf9b1e710dac23a253225acf62870b9b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.7/tuna-0.1.7-linux-x86_64.tar.gz"
      sha256 "eda549e582e8537c0709ef28c4405553beebb13940b7f774f274737c8cb7a264"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.1.7", shell_output("#{bin}/tuna --version").strip
  end
end
