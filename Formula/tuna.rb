class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.5/tuna-1.1.5-darwin-arm64.tar.gz"
      sha256 "cb49fdd778fd09d3d968553cbac0e57389db62b9baab94fefa47e5855b68dffa"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.5/tuna-1.1.5-darwin-x86_64.tar.gz"
      sha256 "6bdc937cbee4c0ea5346e422ea59f13de07c12a7b2940e2374231fa2ec9bcb41"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.5/tuna-1.1.5-linux-arm64.tar.gz"
      sha256 "9f76d82234a4316f3e395463af93e3bbb77ceabed7887ae8e8a92b578280102a"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.5/tuna-1.1.5-linux-x86_64.tar.gz"
      sha256 "ac446856f8be16c8ec5201172e4a00fb74b74b82c74a9ef7a812d38917c59365"
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
