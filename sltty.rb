class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  version "0.1.1"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.1/sltty_0.1.1_darwin_arm64.tar.gz"
    sha256 "c80383a7a9ff5f354aa2d6d94b1b3262da5854b7ee705946e0a9e728964218ed"
  end

  on_intel do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.1/sltty_0.1.1_darwin_amd64.tar.gz"
    sha256 "1569e55681e908d33603e242d8ed73275e326c942fedafb05c4cd6716e038425"
  end

  def install
    bin.install "sltty"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/sltty version")
  end
end
