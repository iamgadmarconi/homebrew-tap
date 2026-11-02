class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.5/tuna-0.1.5-darwin-arm64.tar.gz"
      sha256 "9bcb89322fac58ed003d044b98352e2f7f5a4cb87a4167b7889b883c7fedc19b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.5/tuna-0.1.5-darwin-x86_64.tar.gz"
      sha256 "a7131057e4bb918d67190aca413bd95b4ee864d235d4770eb85de791e5ef1105"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.5/tuna-0.1.5-linux-arm64.tar.gz"
      sha256 "013798c6adfe1bc811727b2c3df958974a426c30fcddb2e674140e4967ad5e7a"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.1.5/tuna-0.1.5-linux-x86_64.tar.gz"
      sha256 "28b502cd312b77834035d13e621af6731108bec95cbf5d3a2faeb6138b00ba72"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.1.5", shell_output("#{bin}/tuna --version").strip
  end
end
