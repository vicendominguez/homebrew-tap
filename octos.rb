class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.8.2"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.8.2/octos-darwin-arm64"
    sha256 "695cf12a4c3a21c5bbc4d5295d34d02ffdb04fd729ddb881ad4a78162f418834"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.8.2/octos-darwin-amd64"
    sha256 "cef9695dad2d3f0dd41e9b1b6b4d7f5eae59ca8cfbca9d9593a54086ab6904da"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
