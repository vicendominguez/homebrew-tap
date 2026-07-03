class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "0.13.1"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v0.13.1/octos-darwin-arm64"
    sha256 "0a0c7a1611b8d6dfd192de4a700d672b692b4bc0a92400a1b03a247aeb7fe57e"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v0.13.1/octos-darwin-amd64"
    sha256 "cefa4fbb3409efdd9bc136502015216c83bdbbea7e56e5bbfa5a0755df056d7c"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
