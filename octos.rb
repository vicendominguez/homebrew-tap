class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.5.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.5.1/octos-darwin-arm64"
    sha256 "b99ad5b96e59f59a7acc526bc32cb750cff3b8eac37cd56242a868bd60a05341"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.5.1/octos-darwin-amd64"
    sha256 "4a59fe7cdc611615090a282988b49832dc23c1d16aa81253f6502e4523a4ffcc"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
