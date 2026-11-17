class Sltty < Formula
  desc "Keyboard-first Slack and Telegram client for the terminal"
  homepage "https://github.com/oscarmlage/sltty"
  # Upstream has no tagged releases yet: pinned to a commit.
  url "https://github.com/oscarmlage/sltty/archive/dac46fcd40f7253cdd1c4f8d87ccaa1d674e3f18.tar.gz"
  version "0.0.0-20261117-dac46fc"
  sha256 "afae1236144fbc411900eb3cca072033387cf0f21d195cfc2ae530a92eaeca14"
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
