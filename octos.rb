class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.2.2"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.2.2/octos-darwin-arm64"
    sha256 "8215b487163330bb6d11de4044426166abbb37087bca4a3e11e328ab3d66470a"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.2.2/octos-darwin-amd64"
    sha256 "6345c8eb7e6865711ed3213c76b826a735c5c3e50dcb7d535bcf523d6113b9e4"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
