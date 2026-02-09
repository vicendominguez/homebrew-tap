class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.5.0"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.5.0/octos-darwin-arm64"
    sha256 "abe12d3e199b2d4f17c9ea2c36093486f6101d426b1fd3d2a1a9b328985153d0"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.5.0/octos-darwin-amd64"
    sha256 "2e9fc89921e5bd6401ab71c29cd66cfa95c0a749f2c5590ec0d6bdba11b4e670"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
