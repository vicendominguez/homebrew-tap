class Simplehttpserver < Formula
  desc "Go alternative of python SimpleHTTPServer"
  homepage "https://github.com/projectdiscovery/simplehttpserver"
  version "0.0.6"

  if Hardware::CPU.arm?
    url "https://github.com/projectdiscovery/simplehttpserver/releases/download/v#{version}/simplehttpserver_#{version}_macOS_arm64.zip"
    sha256 "9d146035db57d6b672857c75960780d5ece85f1e542c0ac6fb8c547ec62823e3"
  else
    url "https://github.com/projectdiscovery/simplehttpserver/releases/download/v#{version}/simplehttpserver_#{version}_macOS_amd64.zip"
    sha256 "958b697e11edb2508329253db9688adef6f6c211e92dc89f57d0b7e7b0f787d7"
  end

  def install
    bin.install "simplehttpserver"
  end

  test do
    system "#{bin}/simplehttpserver", "--version"
  end
end
