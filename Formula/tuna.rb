class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.4/tuna-1.0.0-rc.4-darwin-arm64.tar.gz"
      sha256 "135b2942a97d3ab3b3b6dfb5b3b4b9a056e2642976b5dd606702d0a3d9619459"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.4/tuna-1.0.0-rc.4-darwin-x86_64.tar.gz"
      sha256 "6ec7bd29c99ac07b3cbee5e3efc2be5672bd6c393efad82aba936cb669020ac1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.4/tuna-1.0.0-rc.4-linux-arm64.tar.gz"
      sha256 "0b1050b9f55e027e68bc099efefda7f5f98cbcc4f49655d6687836a63867c2fc"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.4/tuna-1.0.0-rc.4-linux-x86_64.tar.gz"
      sha256 "4d478fddef5d579f106792565549cf824eb0849fae906ea9d34eda9795a2a676"
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
