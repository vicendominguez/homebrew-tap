class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.7.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.7.0/octos-darwin-arm64"
    sha256 "1d35c6b29573e044dcd0b64fe4bbdfd36a877486167819d3b709c8afdedae4e8"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.7.0/octos-darwin-amd64"
    sha256 "52d42e7f770dce8ad134b87e2e4061aea9b60067a53ea3c4ee54976e8ed1cc3d"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
