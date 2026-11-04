class Tuna < Formula
  desc "Multi-agent coding harness for the terminal"
  homepage "https://github.com/iamgadmarconi/homebrew-tap"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.2/tuna-0.2.2-darwin-arm64.tar.gz"
      sha256 "82832ce9041bf9915cc95d331b635cfad35b0afbbbc9b2590f8ca2bd0994f107"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.2/tuna-0.2.2-darwin-x86_64.tar.gz"
      sha256 "b6478352698eda15ec02eb6f33b75f3f71a9c18b0aa06775e430ef822c5f3378"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.2/tuna-0.2.2-linux-arm64.tar.gz"
      sha256 "0bd08433455c727994f059a50e2617e0c237a3ecbda7583268f1d91fda87993d"
    end
    on_intel do
      url "https://github.com/iamgadmarconi/homebrew-tap/releases/download/tuna-v0.2.2/tuna-0.2.2-linux-x86_64.tar.gz"
      sha256 "2c23be1a6813ba58414d08121f23ee5cc01bf7b4c1e075bed9e26604f3c0c0d1"
    end
  end

  def install
    bin.install "tuna"
    prefix.install "LICENSE", "NOTICE", "THIRD_PARTY_NOTICES.md", "README.md"
  end

  test do
    assert_equal "0.2.2", shell_output("#{bin}/tuna --version").strip
  end
end
