class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.5/tuna-0.3.5-darwin-arm64.tar.gz"
      sha256 "656242d704f808ac78b93a418851aaeee8d88669c09e3451cd80341993e23311"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.5/tuna-0.3.5-darwin-x86_64.tar.gz"
      sha256 "0015431446e2993ef7ae45bbeb1bf5f1333fc3556fb30dbe8652cf575a5af4e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.5/tuna-0.3.5-linux-arm64.tar.gz"
      sha256 "20273861f7341d46c8d15ed6dd171845716a2be3e4a6b7b93f7af230ee81ca31"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.5/tuna-0.3.5-linux-x86_64.tar.gz"
      sha256 "943418f03b9d3f8daecdbae8b4bfc2f186e8d69ae9b5f25bb5e3311d7133ad23"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.5", shell_output("#{bin}/tuna --version").strip
  end
end
