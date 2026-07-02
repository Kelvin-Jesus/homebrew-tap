class Mailghost < Formula
  desc "Friendly disposable Mail.tm inbox for your terminal"
  homepage "https://github.com/Kelvin-Jesus/mailghost"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.0/mailghost-v1.1.0-macos-aarch64.tar.gz"
      sha256 "dfedf6b0bf950589b7d9920d4314e9797e0552179d68ea6f6143f13f5226f978"
    end
    on_intel do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.0/mailghost-v1.1.0-macos-x86_64.tar.gz"
      sha256 "9fdc2e7e3e39fb10f0be3267e8001c365269d0c8401426e9696a951188c741bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.0/mailghost-v1.1.0-linux-aarch64.tar.gz"
      sha256 "e27e2acb926efa389560508a3210f488703d4ce43afbc7fe0b9c794b903e9dd1"
    end
    on_intel do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.0/mailghost-v1.1.0-linux-x86_64.tar.gz"
      sha256 "184d59572ca989ccd2d173a6b908249d70193cbee41f4c2de91eadc6cd028322"
    end
  end

  def install
    bin.install "mailghost"
    doc.install "README.md"
    pkgshare.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mailghost --version")
  end
end
