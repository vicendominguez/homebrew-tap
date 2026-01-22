class Gocommit < Formula
  desc "Creates commits with automatically generated messages using ollama"
  homepage "https://github.com/vicendominguez/gocommit"
  url "https://github.com/vicendominguez/gocommit/archive/refs/tags/v0.0.5.tar.gz"
  sha256 "41434cacaf4f0d17b9292c0219a8fef61716f5ca6f263b52e3e9d49c0715e97b"
  license "GPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/gocommit"
  end

  test do
    assert_match "v0.0.5", shell_output("#{bin}/gocommit -version")
  end
end
