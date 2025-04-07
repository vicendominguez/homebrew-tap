class Simplehttpserver < Formula
  desc "Go alternative of python SimpleHTTPServer"
  homepage "https://github.com/projectdiscovery/simplehttpserver"
  version "0.0.6"

  if Hardware::CPU.arm?
    url "https://github.com/projectdiscovery/simplehttpserver/releases/download/v#{version}/simplehttpserver_#{version}_macOS_arm64.zip"
    sha256 "1905f196dcedbfd69fd1ab726eb21893193aaba6e6a1a3cc7ac574383308c55a"
  else
    url "https://github.com/projectdiscovery/simplehttpserver/releases/download/v#{version}/simplehttpserver_#{version}_macOS_amd64.zip"
    sha256 "6f94cfd976a73cd8a410f33c119954a661da930226a47c21c83f3c358362f994"
  end

  def install
    bin.install "simplehttpserver"
  end

  test do
    system "#{bin}/simplehttpserver", "--version"
  end
end
