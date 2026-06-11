class Jsonvalidate < Formula
  desc "A Simple command-line tool for validating JSON files or input. Just checking if it parses"
  homepage "https://github.com/vicendominguez/jsonvalidate"
  version "0.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/jsonvalidate/releases/download/v#{version}/jsonvalidate-v#{version}-darwin-arm64"
    sha256 "4788257756f076c7150f98fde2d81b59ac6740064ec03da3e0094c4ecaaf112a"
  else
    url "https://github.com/vicendominguez/jsonvalidate/releases/download/v#{version}/jsonvalidate-v#{version}-darwin-amd64"
    sha256 "aa1ae1e9b64aa81149d5b8df1462088b9589dda80b416b72154364debf8229ab"
  end

  def install
    bin.install Hardware::CPU.arm? ? "jsonvalidate-v#{version}-darwin-arm64" : "jsonvalidate-v#{version}-darwin-amd64" => "jsonvalidate"
  end

  test do
    system "#{bin}/jsonvalidate", "-v"
  end
end
