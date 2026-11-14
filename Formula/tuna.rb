class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.7/tuna-1.0.0-rc.7-darwin-arm64.tar.gz"
      sha256 "fa13b59fea48a8cda2d01c84df38758fe3613dc4ff1e3341c1112ebd812c9947"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.7/tuna-1.0.0-rc.7-darwin-x86_64.tar.gz"
      sha256 "ec9cf7f03e9da80aa8650f2365a2e76e640c70b44182b08f6206e9b7c24dd578"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.7/tuna-1.0.0-rc.7-linux-arm64.tar.gz"
      sha256 "4c52d0824b8fd001d68657df41710ce7ea598a88c86ed5191c288a234644e3b7"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.7/tuna-1.0.0-rc.7-linux-x86_64.tar.gz"
      sha256 "29a887a116f803e1e720a85c6723794b372cb53176243c12169608300cf1cd76"
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
