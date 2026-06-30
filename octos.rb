class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.9.1"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.9.1/octos-darwin-arm64"
    sha256 "349c127ba68e4f51254dc5f58dacca575ed70dbcfc90d16fd7edb6ab1c2b915d"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.9.1/octos-darwin-amd64"
    sha256 "4e60a1dc51794561613c4e2789f0ddf627f66216e63d3c08f0212c6a78a9ca31"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
