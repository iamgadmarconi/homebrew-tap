class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.1/tuna-1.0.0-rc.1-darwin-arm64.tar.gz"
      sha256 "34d794000531490f5d24876e2198f7248495a05bb77c491449afded551991458"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.1/tuna-1.0.0-rc.1-darwin-x86_64.tar.gz"
      sha256 "70409e118ac522a05575ce8c7a83ea23394abd858600bcf331acf158cca9be3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.1/tuna-1.0.0-rc.1-linux-arm64.tar.gz"
      sha256 "dc35de52a9d1bf22ee137d7716651b29f14781423ccd7edaf224f144d1d6e798"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.1/tuna-1.0.0-rc.1-linux-x86_64.tar.gz"
      sha256 "b367fd9bc80e845a7b38bb49a1a664d6fe99244c534f9fe744424dec914465c4"
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
