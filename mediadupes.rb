class Mediadupes < Formula
  desc "Fast, parallel media deduplicator with EXIF metadata support"
  homepage "https://github.com/vicendominguez/mediadupes"
  version "0.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/mediadupes/releases/download/v#{version}/mediadupes-darwin-arm64.tar.gz"
    sha256 "e2568cc45e0db8221c8c1447b7956ba579aeb1deb5cb29d95154a38990dea4dd"
  else
    url "https://github.com/vicendominguez/mediadupes/releases/download/v#{version}/mediadupes-darwin-amd64.tar.gz"
    sha256 "79845aa4c9d0b956fb60c710dac225708fba33545933856912cfa1ab785e2a73"
  end

  depends_on "exiftool"

  def install
    bin.install "mediadupes"
  end

  test do
    system "#{bin}/mediadupes", "--version"
  end
end
