class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.11/tuna-1.0.0-rc.11-darwin-arm64.tar.gz"
      sha256 "efa23e591d9c95f75a540c3a813e44b80d00ffddd7b841aa9a54f247a1e1d197"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.11/tuna-1.0.0-rc.11-darwin-x86_64.tar.gz"
      sha256 "c6b568888aadcef1b7e11836c6eed077faf00567b0614b5e857b852ed23e593e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.11/tuna-1.0.0-rc.11-linux-arm64.tar.gz"
      sha256 "e3df69505df656ddafd32f3f2d4f9efc5fd57e9ecc1810970825cf3fc9568bdb"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.11/tuna-1.0.0-rc.11-linux-x86_64.tar.gz"
      sha256 "ad1747e2c638a3ec80132cd7891095fdd63793a6a663e269324b9bc10279a8b7"
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
