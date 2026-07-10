class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.1.5"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.5/octos-darwin-arm64"
    sha256 "0a46642a5bc8a75e40cd2bd54fed86b1ef7150748604623ebb0a866e212dce91"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.5/octos-darwin-amd64"
    sha256 "6128708b0d595fc18b279dcb7c1489d0c33817b3ae15a7a420d3fc6610f933dd"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
