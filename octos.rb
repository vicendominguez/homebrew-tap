class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.6.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.6.0/octos-darwin-arm64"
    sha256 "49ecc576196606043f9fe9648b494856d9b99cafda7d231fcbc1c6cae3674c8d"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.6.0/octos-darwin-amd64"
    sha256 "5f187e76575cbc2d3ddc16792491a9ebad8b5ba461da6554840fd1adf0947717"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
