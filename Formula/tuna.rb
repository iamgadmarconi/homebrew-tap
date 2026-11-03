class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.1/tuna-0.2.1-darwin-arm64.tar.gz"
      sha256 "88b89806d5e74c7eba27e1956c483aa4b874b6af3f44742630a3356195d55b2f"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.1/tuna-0.2.1-darwin-x86_64.tar.gz"
      sha256 "48cbfee1558cf1402125f96961ce379c124c3f13344bed937a29ea10d1b85cb5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.1/tuna-0.2.1-linux-arm64.tar.gz"
      sha256 "55bfa615430211f9548739c2cc053f1fc4aed04209e34d595295193cc9fe3301"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.1/tuna-0.2.1-linux-x86_64.tar.gz"
      sha256 "716870931fbd4edd7d6bfd2fe4918af47a4ffedae84efc1d9f83bf78e57d3f57"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.2.1", shell_output("#{bin}/tuna --version").strip
  end
end
