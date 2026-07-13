class Octos < Formula
  desc "LLM agent pipeline orchestrator"
  homepage "https://github.com/vicendominguez/octos"
  version "1.2.3"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/octos/releases/download/v1.2.3/octos-darwin-arm64"
    sha256 "938b5979596304e5dcd77c4f04db6c38c758269500599d60e061c186bfdf38cb"
  else
    url "https://github.com/vicendominguez/octos/releases/download/v1.2.3/octos-darwin-amd64"
    sha256 "e29ca6ddad6b6f9afb31b578616e94e65fa22b7e7d20e95ee7bc631de3b32b92"
  end

  def install
    bin.install "octos-darwin-#{Hardware::CPU.arch}" => "octos"
  end

  test do
    assert_match "octos", shell_output("#{bin}/octos --help")
  end
end
