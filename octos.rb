class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.8.0"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.8.0/octos-darwin-arm64"
    sha256 "1f602c23d226f064984ce44592d71560c4e60793553bbd3b5712cd3cc8fe2a25"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.8.0/octos-darwin-amd64"
    sha256 "f6641177a04c26f2971e8e7de65548ff2312679c56708dd7b9aa755ca0aedc9e"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
