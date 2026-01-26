class Gocommit < Formula
  desc "Creates commits with automatically generated messages using ollama"
  homepage "https://github.com/vicendominguez/gocommit"
  version "0.0.6"
  license "GPL-3.0"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/gocommit/releases/download/v0.0.6/gocommit-v0.0.6-darwin-arm64"
    sha256 "6b807866b469e261298b6c261ec3396cdfdd1fe8adbcb4b565b870d95bc3f945"
  else
    url "https://github.com/vicendominguez/gocommit/releases/download/v0.0.6/gocommit-v0.0.6-darwin-amd64"
    sha256 "a483e4d65927ea0ff49057d7614200776ebf7cf167def0c911f6b2f6bbe0dcb9"
  end

  def install
    bin.install "gocommit-v#{version}-darwin-#{Hardware::CPU.arch}" => "gocommit"
  end

  test do
    assert_match "v0.0.6", shell_output("#{bin}/gocommit -version")
  end
end
