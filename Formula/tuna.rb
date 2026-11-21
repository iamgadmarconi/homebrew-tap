class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "1.0.0-rc.25"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.25/tuna-1.0.0-rc.25-darwin-arm64.tar.gz"
      sha256 "1d79fa7f9748e560dcb55caf197a628bedbcddd8d5135523f22e64235346194b"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.25/tuna-1.0.0-rc.25-darwin-x86_64.tar.gz"
      sha256 "e52f52e912f77ee3cae93e3182558a938d045d9ee305f5f2e246bf9f0e49b64e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.25/tuna-1.0.0-rc.25-linux-arm64.tar.gz"
      sha256 "e89a46012b1d8a09dc3394e7bfed7265c72d2d5bb7a0a19fac9122ef39a3ae78"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v1.0.0-rc.25/tuna-1.0.0-rc.25-linux-x86_64.tar.gz"
      sha256 "3ccb4f48611ffb7a10360508459e31dad2f796d80af42069172ad75359a0b5ed"
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
