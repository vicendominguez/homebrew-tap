class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.3.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.3.0/octos-darwin-arm64"
    sha256 "33f2fdbda3025cec0d6135ee91cd2333c105557364c898fb974d6e2fe428eb08"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.3.0/octos-darwin-amd64"
    sha256 "fcf3a1507ef1cab23f53293c1d1e21fc23ac167fb895019807096cf6984cbfdb"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
