class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.7.2"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.7.2/octos-darwin-arm64"
    sha256 "209f7186c7bf8efdebb7fd424de94f74c3d3bbdb994869d125a42471bc9bfa0d"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.7.2/octos-darwin-amd64"
    sha256 "24acbb7b5bf4b870e3bed6b580063964363578edf66a4bef6286bf26a0f62dc9"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
