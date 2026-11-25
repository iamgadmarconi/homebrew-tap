class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.3/tuna-1.1.3-darwin-arm64.tar.gz"
      sha256 "72c2fd44e94697397c54c972e7c0880fc86fcf74f1684714872cbe72deafcfc2"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.3/tuna-1.1.3-darwin-x86_64.tar.gz"
      sha256 "1630a3489b646369223b6b4b6dce11984684be6cf7b2165948e15e248300d822"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.3/tuna-1.1.3-linux-arm64.tar.gz"
      sha256 "65deda8c8da7a55471aaf691fbca9047b06bd69508da47349951b3c44ba94363"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.1.3/tuna-1.1.3-linux-x86_64.tar.gz"
      sha256 "b15ee3b1cf2a3d9a616ed287c7d5c42cac4af5929ef2628c85a714d2d5d11a53"
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
