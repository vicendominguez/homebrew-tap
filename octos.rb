class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.12.1"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.12.1/octos-darwin-arm64"
    sha256 "66c2ffe9cb5090ed7025ce83f1ca561a583643bd97251e41d3c126413e14e9f6"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.12.1/octos-darwin-amd64"
    sha256 "5a23974ad835bda6168c6ee5a3f367b75d63aafc54cd0ac16bab7acbeeb9672e"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
