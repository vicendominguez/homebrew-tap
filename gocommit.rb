class Gocommit < Formula
  desc "Creates commits with automatically generated messages using ollama"
  homepage "https://github.com/vicendominguez/gocommit"
  version "0.0.5"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/gocommit/releases/download/v0.0.5/gocommit-v0.0.5-darwin-arm64"
    sha256 "f5cc3254a18db3efb28cb2ee55ce93590dcdb303164d87fe646a3e65872fcd52"
  else
    url "https://github.com/vicendominguez/gocommit/releases/download/v0.0.5/gocommit-v0.0.5-darwin-amd64"
    sha256 "962696e0efde7e8ba147754adde44afcb8ba49d79e07b08bef859edf76201bbe"
  end

  def install
    bin.install "gocommit-v#{version}-darwin-#{Hardware::CPU.arch}" => "gocommit"
  end

  test do
    assert_match "v0.0.5", shell_output("#{bin}/gocommit -version")
  end
end
