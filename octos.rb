class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.7.1"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.7.1/octos-darwin-arm64"
    sha256 "c9c9bbedfc2fcef562365c81db37d4dd9c8e546e11be85c29aa02c48c6dd6bb7"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.7.1/octos-darwin-amd64"
    sha256 "6c41bb24032ea03291744513658aa813c0220723b31d2d31114d6233d43fade7"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
