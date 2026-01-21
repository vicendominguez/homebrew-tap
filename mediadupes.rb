class Mediadupes < Formula
  desc "Fast, parallel media deduplicator with EXIF metadata support"
  homepage "https://github.com/vicendominguez/mediadupes"
  version "0.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/mediadupes/releases/download/v#{version}/mediadupes-darwin-arm64.tar.gz"
    sha256 "204ca338ef208f09ec9b10cee192f11b8b02415eababb3374f4c7d8b1ed09cd0"
  else
    url "https://github.com/vicendominguez/mediadupes/releases/download/v#{version}/mediadupes-darwin-amd64.tar.gz"
    sha256 "dd0e0ccfdef0ea82c4a01636be4b492a4935594454ef3b779b589859aa189a58"
  end

  depends_on "exiftool"

  def install
    bin.install "mediadupes"
  end

  test do
    system "#{bin}/mediadupes", "--version"
  end
end
