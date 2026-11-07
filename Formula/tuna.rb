class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.0/tuna-0.3.0-darwin-arm64.tar.gz"
      sha256 "d4c3282e82e96bc3d041991ccb2d760da34cbf1076629983ccd84dccf28573fa"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.0/tuna-0.3.0-darwin-x86_64.tar.gz"
      sha256 "1c6f4ced8e1e4dee32cac4f93d7cd529cca71445f66324cab27ee3ac4aefd73e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.0/tuna-0.3.0-linux-arm64.tar.gz"
      sha256 "4aa9e2d4e5a3232d796fe47ce17832f8babf3587a7de5b517c96515e45ddf734"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.0/tuna-0.3.0-linux-x86_64.tar.gz"
      sha256 "ab948c8a7b11feae83fe2cc244be853323772d4cff9e325b70dcddebbe5cf1a6"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.0", shell_output("#{bin}/tuna --version").strip
  end
end
