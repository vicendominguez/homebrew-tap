class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.1.0"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.0/octos-darwin-arm64"
    sha256 "3682b2afc844fa756dbe3255d12dc5a5e6ab136ff0dbb1c070ece37a6169c2f9"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.0/octos-darwin-amd64"
    sha256 "d3f400c12c329f5bbeeb984820216cef328a277c41f58a025373e8ce2113a2aa"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
