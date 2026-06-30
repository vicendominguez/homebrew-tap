class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.9.0"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.9.0/octos-darwin-arm64"
    sha256 "5783d25e02461c1fc0aa6cef46155541261f8e6e2cf097b7aa91fc75fa834f48"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.9.0/octos-darwin-amd64"
    sha256 "df11e5cb3c1b823a6f87110f590687197643cdf90a8a169debde2e8ae9554ee0"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
