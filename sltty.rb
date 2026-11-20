class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  version "0.1.11"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.11/sltty_0.1.11_darwin_arm64.tar.gz"
    sha256 "f8c62d3c81f9ff7d93ddcbb89b790814c72e01afbb836686e4293237cb832700"
  end

  on_intel do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.11/sltty_0.1.11_darwin_amd64.tar.gz"
    sha256 "10d3e31749730b0bc94e4696f4f33a60d43041639f5037e600ad7b944d108278"
  end

  def install
    bin.install "sltty"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/sltty version")
  end
end
