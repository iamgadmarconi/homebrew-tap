class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.1/tuna-0.1.1-darwin-arm64.tar.gz"
      sha256 "992f5df8964818994f3ee6ae9388edb9182a19b6fd5320c204a4621a32405677"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.1/tuna-0.1.1-darwin-x86_64.tar.gz"
      sha256 "401128ddf5240daf36542f9e1e3728c6e13e50630457d3dac031c345df4bd06a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.1/tuna-0.1.1-linux-arm64.tar.gz"
      sha256 "cbe51ab8205eea92c489886dc0c6442cac972cd0b9dc41d181aef2965b117f92"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.1/tuna-0.1.1-linux-x86_64.tar.gz"
      sha256 "39517ed4806ee88027552c63f291596224189473365ab44c5cfb3b20f84090cc"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.1.1", shell_output("#{bin}/tuna --version").strip
  end
end
