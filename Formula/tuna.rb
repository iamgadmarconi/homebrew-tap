class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.27"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.27/tuna-1.0.0-rc.27-darwin-arm64.tar.gz"
      sha256 "41aa1552d5c1c19af15ba7ed8953ce149e143d5a78347d4d7554573f714c0aa2"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.27/tuna-1.0.0-rc.27-darwin-x86_64.tar.gz"
      sha256 "318f1aec1ad06d48d3568c4ed35d3803235e5b56a975239a7704396d17c7a4fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.27/tuna-1.0.0-rc.27-linux-arm64.tar.gz"
      sha256 "18f182586b0a2a4295466011ffaab4143e2a9b7689573ffde417f0f25d37d46d"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.27/tuna-1.0.0-rc.27-linux-x86_64.tar.gz"
      sha256 "a7b6c1774f22557c7776c91e309bb2949df328aa56fd86d3e05ff0028ab7c54d"
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
