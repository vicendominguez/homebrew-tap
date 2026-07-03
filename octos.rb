class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.0.1"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.0.1/octos-darwin-arm64"
    sha256 "6d7bbdba0d6fa708d8c1f6f365860b44fdcc768ed9057ce1f5aff412172a057a"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.0.1/octos-darwin-amd64"
    sha256 "6628cdaae455f2d7a341fc4a883c8d92f53d41f961da935e35c92e6e1e2dbd72"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
