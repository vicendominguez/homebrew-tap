class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  version "0.1.8"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.8/sltty_0.1.8_darwin_arm64.tar.gz"
    sha256 "2615d110e5dade7d61957fac750969e08a2a07b8ef97ad1e35bf74ce02a0bc2d"
  end

  on_intel do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.8/sltty_0.1.8_darwin_amd64.tar.gz"
    sha256 "435b13d32e3fd1576eacbeb57d9d59f321d8927a9a37cad1a5ead86957a78682"
  end

  def install
    bin.install "sltty"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/sltty version")
  end
end
