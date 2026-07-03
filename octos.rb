class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.1.2"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.2/octos-darwin-arm64"
    sha256 "79f6492748f092236748d0fd8f3c3d0da16b9e8d2185aca912dd0d2a92d5c9c6"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.2/octos-darwin-amd64"
    sha256 "89dfbd0231589aa3b03fc338d89e8bd8a34c7a0933957f99cd74b5a79fb69a08"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
