class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  version "0.1.6"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.6/sltty_0.1.6_darwin_arm64.tar.gz"
    sha256 "b115295ca5781feda83c2e4605dd63c6d3fe7ff76d6a18eedd7c565c6619b6d6"
  end

  on_intel do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.6/sltty_0.1.6_darwin_amd64.tar.gz"
    sha256 "6bebb686f091cbdd02764cfff2c4a0a73f61e72196d1e720b5a65c0e8588f8c5"
  end

  def install
    bin.install "sltty"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/sltty version")
  end
end
