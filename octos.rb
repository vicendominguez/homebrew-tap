class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.12.0"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.12.0/octos-darwin-arm64"
    sha256 "2181ac2c96d61c5f2cbf4c06837f8856bed0a67b815f81df10e9ee21781064a7"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.12.0/octos-darwin-amd64"
    sha256 "7870228b351f9557ea49cab862cd5a6cb085492782d7e020233205f56a78d0b9"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
