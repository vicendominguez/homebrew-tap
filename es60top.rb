class Es60top < Formula
  desc "An old ElasticSearch monitoring client like top for the deprecated 6.x versions"
  homepage "https://github.com/vicendominguez/es60top"
  version "0.0.5"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/es60top/releases/download/v#{version}/es60top-v#{version}-darwin-arm64"
    sha256 "734acb881f8b90462b15f2ee7708f4d0048eafb1834e7a0bf491468a1162587d"
  else
    url "https://github.com/vicendominguez/es60top/releases/download/v#{version}/es60top-v#{version}-darwin-amd64"
    sha256 "14dc15ccb29112a25ba618ef6d0bb81fc38bab1967c9c92d5a0d79976a200ca0"
  end

  def install
    bin.install Hardware::CPU.arm? ? "es60top-v#{version}-darwin-arm64" : "es60top-v#{version}-darwin-amd64" => "es60top"
  end

  test do
    system "#{bin}/es60top", "-version"
  end
end
