class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.26"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.26/tuna-1.0.0-rc.26-darwin-arm64.tar.gz"
      sha256 "2d824b815253de18ba63621ba59247bf34c8416225806edd4422c3fbdb7ed725"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.26/tuna-1.0.0-rc.26-darwin-x86_64.tar.gz"
      sha256 "a47130097ab7e0259599cf88cf0967a2ed5b768c7ab9f1a78ce91bada86eec5c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.26/tuna-1.0.0-rc.26-linux-arm64.tar.gz"
      sha256 "2b2ba5305d97b5b9c644aa687be8cce9729086b7625e2857a861991fb2ad5b15"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.26/tuna-1.0.0-rc.26-linux-x86_64.tar.gz"
      sha256 "3dd0a0fc1aa9cc5b06a2452d3fb5a2a9fe3822ea530ee485b102fa65edf3b167"
    end
  end

  def install
    bin.install "tuna"
    bin.install "tuna-desktop" if OS.mac?
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  # No service: Fish and the CLI share tuna's own daemon lifecycle.
  # Linux archives have no desktop host and no x264 runtime dependency.
end
