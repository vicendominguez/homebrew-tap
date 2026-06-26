class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.6.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.6.1/octos-darwin-arm64"
    sha256 "8c339b9b216df2c99249c6f54c9941a5d82b0d5bf8e71a0ebea205209cb008ec"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.6.1/octos-darwin-amd64"
    sha256 "450a2160d4b690d942a104bebeb8590193c5b6427350dee45c2ec568608b4a35"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
