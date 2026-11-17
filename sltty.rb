class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  # Upstream has no tagged releases yet: pinned to a commit.
  url "https://github.com/oscarmlage/sltty/archive/5c2fbc9ff336b6bfbaf17cf353a5d5d04d0a9567.tar.gz"
  version "0.0.0-20261117-5c2fbc9"
  sha256 "ead724b8c651852b9a79d61bfe0e9187457c38971124eb2e2d082f0f62feac59"
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
