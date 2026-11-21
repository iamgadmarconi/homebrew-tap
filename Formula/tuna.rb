class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.29"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.29/tuna-1.0.0-rc.29-darwin-arm64.tar.gz"
      sha256 "40ef056fe824955c77b8dded26cb3d495d1ff92e8d59e000a1de4cd850468bb7"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.29/tuna-1.0.0-rc.29-darwin-x86_64.tar.gz"
      sha256 "4a357dbef75ace7692bbbb19aa27b217446e59dcbbe9986ad4f9e1aae8cf5be1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.29/tuna-1.0.0-rc.29-linux-arm64.tar.gz"
      sha256 "a8432d01ca6710b27163497ffca5c1f5c3168dfeed3f37c776f3ad11a4823647"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.29/tuna-1.0.0-rc.29-linux-x86_64.tar.gz"
      sha256 "9aac9895e6ea4a2d2987a4d805a1c1aa1b280d3c5a0570dea2bd383f923f155b"
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
