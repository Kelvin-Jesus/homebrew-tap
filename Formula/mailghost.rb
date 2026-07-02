class Mailghost < Formula
  desc "Friendly disposable Mail.tm inbox for your terminal"
  homepage "https://github.com/Kelvin-Jesus/mailghost"
  version "1.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.1/mailghost-v1.1.1-macos-aarch64.tar.gz"
      sha256 "fac3b23ac6f52859b94905ccc5a31a46e6acd811e869b9d29f32f4a6c96e40e2"
    end
    on_intel do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.1/mailghost-v1.1.1-macos-x86_64.tar.gz"
      sha256 "92f27dcb4739947fcf1b215c140d761131873c695eac580bdc3f2819171dd4b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.1/mailghost-v1.1.1-linux-aarch64.tar.gz"
      sha256 "b837e3056d3a866c387c23ef239cc60f3a59bda401abae5c04d252fec3a027be"
    end
    on_intel do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.1/mailghost-v1.1.1-linux-x86_64.tar.gz"
      sha256 "60ed07e7867fbeb6adbee5bf0c9f1974b38ced615c586a6d84d1e09e7ed46196"
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
