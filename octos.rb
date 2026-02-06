class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.1.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.1.0/octos-darwin-arm64"
    sha256 "0cec882cee0294891c20ae7fdfd342db5920a4d6aa477f3022acda07d4ccb6dc"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.1.0/octos-darwin-amd64"
    sha256 "e8461e01ccc8737f3ae007a27d25c8ab034e32b2a301dafa0fb25c20a7be42f1"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
