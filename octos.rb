class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.1.4"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.4/octos-darwin-arm64"
    sha256 "b316c5e6baca8a5d3559a06c3a00526e8a51a19d823670e4fc2f79ac8640f7c5"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.4/octos-darwin-amd64"
    sha256 "9b3d6c1f660ef125f9652cab7bc5c0824eb7b7cf80d504d299356e87189b3a27"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
