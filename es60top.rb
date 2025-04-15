class Es60top < Formula
  desc "An old ElasticSearch monitoring client like top for the deprecated 6.x versions"
  homepage "https://github.com/vicendominguez/es60top"
  version "0.0.4"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/es60top/releases/download/v#{version}/es60top-v#{version}-darwin-arm64"
    sha256 "5b29474249c6bd90d57b51ba3cb503c0df6bb0cf9c4d6c09b292650ae9706817"
  else
    url "https://github.com/vicendominguez/es60top/releases/download/v#{version}/es60top-v#{version}-darwin-amd64"
    sha256 "0a5e4aa802c1dfe54441fc120498798d115645e33cfe542e0b21766252532fbe"
  end

  def install
    bin.install Hardware::CPU.arm? ? "es60top-v#{version}-darwin-arm64" : "es60top-v#{version}-darwin-amd64" => "es60top"
  end

  test do
    system "#{bin}/es60top", "-version"
  end
end
