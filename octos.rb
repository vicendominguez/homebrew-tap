class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.1.1"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.1/octos-darwin-arm64"
    sha256 "fae69a5a7c24f5d4aa5355f02bfd37d20dbd1564c4e029f380053c4009a77760"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.1/octos-darwin-amd64"
    sha256 "6c5376cb22bb88c0c2be53ccdfc739114553c306fb4e0d3a665034848e59ec57"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
