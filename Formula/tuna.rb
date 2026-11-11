class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.4.0/tuna-0.4.0-darwin-arm64.tar.gz"
      sha256 "15ca7a2ecc2cdfb9b4fb63b382492ec4e2fc6d0893bb3118ab108d95bb5fb737"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.4.0/tuna-0.4.0-darwin-x86_64.tar.gz"
      sha256 "1086cb5d23e874f2a060dae0c4dd92732e67a400d0c941c3b00b515b66a8a582"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.4.0/tuna-0.4.0-linux-arm64.tar.gz"
      sha256 "4b38773ee883142066690064b7aa851c8b8d1a09842a51e51e7faa1ee9421220"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.4.0/tuna-0.4.0-linux-x86_64.tar.gz"
      sha256 "0513aaa817f08fe5e12ad9425a00d7f74db1cb4186a544e60e933892f0c9bb72"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

end
