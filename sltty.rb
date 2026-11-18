class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  version "0.1.4"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.4/sltty_0.1.4_darwin_arm64.tar.gz"
    sha256 "c03458f77433a24d9632f7f188dd7bb611c42d6856936e4df3218877a877639a"
  end

  on_intel do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.4/sltty_0.1.4_darwin_amd64.tar.gz"
    sha256 "b7328103454af5994bf918055cbb7dd38a50cfc46375198f86900e356a6fdc3e"
  end

  def install
    bin.install "sltty"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/sltty version")
  end
end
