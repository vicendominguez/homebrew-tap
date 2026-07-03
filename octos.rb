class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.0.0"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.0.0/octos-darwin-arm64"
    sha256 "0be8e5d8f2ddce97e2e9ee276eaf7d7a846d9c6c9069e9555a4da5da613051e1"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.0.0/octos-darwin-amd64"
    sha256 "71cd39d0dc1449a3331d2bde452d657f491495d1f242c1aa54a9480c6077a9be"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
