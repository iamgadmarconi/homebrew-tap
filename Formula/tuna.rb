class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.33"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.33/tuna-1.0.0-rc.33-darwin-arm64.tar.gz"
      sha256 "423a50726db663c5ddab557878c9e8792a6c9dc0c7165857892d7f28cfd673a6"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.33/tuna-1.0.0-rc.33-darwin-x86_64.tar.gz"
      sha256 "6721fca1677c155de46decced240df69751be523f91f207a8e1a452b7dce0566"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.33/tuna-1.0.0-rc.33-linux-arm64.tar.gz"
      sha256 "120dafe87d0dbde27634b9c0a28a6c61b3e21b13f751846eaf58b3e8cc72feeb"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.33/tuna-1.0.0-rc.33-linux-x86_64.tar.gz"
      sha256 "e49d1a643d5aec6e07e9c314af36480d85eb169051bdc31039483fa025fbef7a"
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
