class Es60top < Formula
  desc "An old ElasticSearch monitoring client like top for the deprecated 6.x versions"
  homepage "https://github.com/vicendominguez/es60top"
  version "0.0.1"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/es60top/releases/download/v#{version}/es60top-v#{version}-darwin-arm64"
    sha256 "8fd526da2a6a040e8bf4f71fa2051d4e899f9732d33eae39e95aa8a1943c1091"
  else
    url "https://github.com/vicendominguez/es60top/releases/download/v#{version}/es60top-v#{version}-darwin-amd64"
    sha256 "053e28c8c30194e116a7cc6837a235eaf5385cfb6dd722aec74dbda2a7370275"
  end

  def install
    bin.install Hardware::CPU.arm? ? "es60top-v#{version}-darwin-arm64" : "es60top-v#{version}-darwin-amd64" => "es60top"
  end

  test do
    system "#{bin}/es60top", "-v"
  end
end
