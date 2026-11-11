class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.3.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.8/tuna-0.3.8-darwin-arm64.tar.gz"
      sha256 "35f85d266559fab4eb58c7de7dcedf259efbaeec791eaa4946a71ce201dbc7a4"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.8/tuna-0.3.8-darwin-x86_64.tar.gz"
      sha256 "c5db69039169df5f54af5bb35a774969d25e2fabba166747e95d6fdc7dcc2212"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.8/tuna-0.3.8-linux-arm64.tar.gz"
      sha256 "5f7a7aa0a85ffe92fb14c8d7dbff442655ea3f42f386caf9521a6a4069701863"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.3.8/tuna-0.3.8-linux-x86_64.tar.gz"
      sha256 "73e606d0d471aceb8866004504c6826dba942aa75b77b0daabb1c1fa5c9e94f4"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.3.8", shell_output("#{bin}/tuna --version").strip
  end
end
