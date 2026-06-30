class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.8.1"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.8.1/octos-darwin-arm64"
    sha256 "e9a2fd758768801f9ec52ae22ace0f7be2fe09e597c1a8502c39279d27ec2f68"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.8.1/octos-darwin-amd64"
    sha256 "e54b88ebbb5f70ee1628942fc832d37f1734922975d5a6d0163d39c8c42a6ec4"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
