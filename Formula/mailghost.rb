class Mailghost < Formula
  desc "Friendly disposable Mail.tm inbox for your terminal"
  homepage "https://github.com/Kelvin-Jesus/mailghost"
  version "1.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.2/mailghost-v1.1.2-macos-aarch64.tar.gz"
      sha256 "bd807a116d41fd0022329e2de24c7002d70aa1d4aba21154289c01746393c99d"
    end
    on_intel do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.2/mailghost-v1.1.2-macos-x86_64.tar.gz"
      sha256 "b98d7ee26aa90e61f58160b8b48ef12195e92a0c70201b810b166aefe15e91e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.2/mailghost-v1.1.2-linux-aarch64.tar.gz"
      sha256 "f8262352f412cf74e8563a1055a652af29b20b646d8ad9d3d2a43bf36938185d"
    end
    on_intel do
      url "https://github.com/Kelvin-Jesus/mailghost/releases/download/v1.1.2/mailghost-v1.1.2-linux-x86_64.tar.gz"
      sha256 "0bdf73f840c74ca4f9d5b8db50cd7b0506e0f637d200abaf49121ad5cb4b8951"
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
