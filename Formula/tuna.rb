class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.1/tuna-0.3.1-darwin-arm64.tar.gz"
      sha256 "d42c3efbbfc48eedfb8d7ccd3d50b7a9dc3257aad7401824865d994ce2ac85d0"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.1/tuna-0.3.1-darwin-x86_64.tar.gz"
      sha256 "47ba633fc289ace8e05e63131ab100e42f4e081d4861c67fe134845cf5f78104"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.1/tuna-0.3.1-linux-arm64.tar.gz"
      sha256 "951a81a9e715a0ddbc21b6b3772ead0a663e0470dfe49ad3279aed40f2b1cbef"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.1/tuna-0.3.1-linux-x86_64.tar.gz"
      sha256 "6e5ecfad522e3e9c637b26ac142ef367467b24b055d21d0da45f8e0a56ee97eb"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.1", shell_output("#{bin}/tuna --version").strip
  end
end
