class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.10.0"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.10.0/octos-darwin-arm64"
    sha256 "943ed723da3288b3b97b1efb39a094dde5fe647799f0a51663432aa78d629558"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.10.0/octos-darwin-amd64"
    sha256 "918a46d232641380f8631bc9833687a9da02b5d33024c6e76ddeedb2ae38a0b1"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
