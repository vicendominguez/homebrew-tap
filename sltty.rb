class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  # Upstream has no tagged releases yet: pinned to a commit.
  url "https://github.com/oscarmlage/sltty/archive/0a9ce2dc4e2daacbb59c055b26b2d1602746d4ba.tar.gz"
  version "0.0.0-20261117-0a9ce2d"
  sha256 "1a3c0582292f167a0ab68dc9ee5c28c2e37521634668bc0fbbacb23538e9a309"
  license "MIT"
  head "https://github.com/oscarmlage/sltty.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/sltty"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sltty version")
  end
end
