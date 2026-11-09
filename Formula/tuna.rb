class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.4/tuna-0.3.4-darwin-arm64.tar.gz"
      sha256 "3a8e406a3f8df8a4bd992588ce773df0addd8673222d7cf8d7aab5968f392842"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.4/tuna-0.3.4-darwin-x86_64.tar.gz"
      sha256 "7c832e33c3122387857a678cfcea1c8f4f64af10bec2803ab1a08b88cee64cb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.4/tuna-0.3.4-linux-arm64.tar.gz"
      sha256 "fcad26d24619ebfdd67d6dc01c2649531ec2ae9e6b08c8ee51ad82470d660870"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.4/tuna-0.3.4-linux-x86_64.tar.gz"
      sha256 "2f375ffc34a1692774ff93c2c3ae8d76379cb2fd2ddf7e255e2a4e3cea115f1d"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.4", shell_output("#{bin}/tuna --version").strip
  end
end
