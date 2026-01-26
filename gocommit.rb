class Gocommit < Formula
  desc "Creates commits with automatically generated messages using ollama"
  homepage "https://github.com/vicendominguez/gocommit"
  version "0.0.7"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/gocommit/releases/download/v0.0.7/gocommit-v0.0.7-darwin-arm64"
    sha256 "af2de18d0beae5c47c1fb6e93440218b916cce8ef4ce66f8f36ccbec44925c50"
  else
    url "https://github.com/vicendominguez/gocommit/releases/download/v0.0.7/gocommit-v0.0.7-darwin-amd64"
    sha256 "1120b43e48b325d0398891523c184c25c5c9ec7f0c34ce02ada4e859abb69b4c"
  end

  def install
    bin.install "gocommit-v#{version}-darwin-#{Hardware::CPU.arch}" => "gocommit"
  end

  test do
    assert_match "v0.0.7", shell_output("#{bin}/gocommit -version")
  end
end
