class Mailghost < Formula
  desc "Friendly disposable Mail.tm inbox for your terminal"
  homepage "https://github.com/Kelvin-Jesus/mailghost"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.0.0/mailghost-v1.0.0-macos-aarch64.tar.gz"
      sha256 "799e435162bca22206250be9792372dae52239b35c8617503b80061c9a704cc1"
    end
    on_intel do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.0.0/mailghost-v1.0.0-macos-x86_64.tar.gz"
      sha256 "a5ef95def0124c4cb7cce26a36c3794e4ab3c26ad05bad31d574e259b6a44796"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.0.0/mailghost-v1.0.0-linux-aarch64.tar.gz"
      sha256 "17483298aadeac85392e75b6e839fd2abae1dd17d76731d3db9ff2fdbc8cba9a"
    end
    on_intel do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.0.0/mailghost-v1.0.0-linux-x86_64.tar.gz"
      sha256 "f0287d8e372b80f4f86a87de19bc015098131241f8b81bb2e9c579d53d867253"
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
