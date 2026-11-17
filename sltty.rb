class Sltty < Formula
  desc "Keyboard-first Slack client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  # Upstream has no tagged releases yet: pinned to a commit.
  url "https://github.com/oscarmlage/sltty/archive/8ed9715d2071e4fb073fbb7688496a73aab7545b.tar.gz"
  version "0.0.0-20261116-8ed9715"
  sha256 "b4aa060adab79e294d297ac4701af9cdccec429eb03aaa80d3c5eb912455cf0e"
  license "MIT"
  head "https://github.com/oscarmlage/sltty.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/sltty"
  end

  test do
    assert_match "\"keys\"", shell_output("#{bin}/sltty keys")
  end
end
