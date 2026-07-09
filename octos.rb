class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.1.3"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.3/octos-darwin-arm64"
    sha256 "ebb6ba920f4329d18519a6c8b712f9db17976c515f404077dea40329375e5a81"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.1.3/octos-darwin-amd64"
    sha256 "139879cfb150b3725facd2aa6a3481be9f88e6fcbfacfc552368ff0fbba28cd4"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
