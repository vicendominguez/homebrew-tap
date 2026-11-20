class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  version "0.1.7"
  license "MIT"

  depends_on :macos

  on_arm do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.7/sltty_0.1.7_darwin_arm64.tar.gz"
    sha256 "d98a3714e220549255fb37a16e520f20ef48542bb7a6eac9f2c6fae534298eed"
  end

  on_intel do
    url "https://github.com/oscarmlage/sltty/releases/download/v0.1.7/sltty_0.1.7_darwin_amd64.tar.gz"
    sha256 "cc5b835181563d5211638d5324ec2795db68c8136d3b2e101a14f1601b45c324"
  end

  def install
    bin.install "sltty"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/sltty version")
  end
end
