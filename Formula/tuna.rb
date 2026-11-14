class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.2/tuna-1.0.0-rc.2-darwin-arm64.tar.gz"
      sha256 "12b982bf56fd9e1f9ff6d8683470cd31f10fa4907064275f81ccf1d538658095"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.2/tuna-1.0.0-rc.2-darwin-x86_64.tar.gz"
      sha256 "8b7c364aada0ed4a2ea8ff7d1270bf07ea1153199fb6f436779a4852e7f2f268"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.2/tuna-1.0.0-rc.2-linux-arm64.tar.gz"
      sha256 "606df596f4e879875bd704e9327494c99f98d1b727a594cb97903f2f769e62f9"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.2/tuna-1.0.0-rc.2-linux-x86_64.tar.gz"
      sha256 "fb44a6655a9a1c959706adbc88ac77bee47b0c01c679f6f1b42a51298baea69e"
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
