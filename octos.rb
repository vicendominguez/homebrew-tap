class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.13.0"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.13.0/octos-darwin-arm64"
    sha256 "ff586cf07f80688a34037ca81e49821ad80a0fa328c0084a312c3eab7bf3db8b"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.13.0/octos-darwin-amd64"
    sha256 "4bfcb28057d4782038dac2c40486e2338e586fce0a2f840abf3a2209d48a0faf"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
