class Jsonvalidate < Formula
  desc "A Simple command-line tool for validating JSON files or input. Just checking if it parses"
  homepage "https://github.com/vicendominguez/jsonvalidate"
  version "0.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/jsonvalidate/releases/download/v#{version}/jsonvalidate-v#{version}-darwin-arm64"
    sha256 "1a0519ef48562fb14cc1caa7f6d328c6e353873e9e4130e381bfceb37e7058aa"
  else
    url "https://github.com/vicendominguez/jsonvalidate/releases/download/v#{version}/jsonvalidate-v#{version}-darwin-amd64"
    sha256 "c540a314a68dc0cb884e2981c4996d43d9d2b822e2047c977282304c85ec3687"
  end

  def install
    bin.install Hardware::CPU.arm? ? "jsonvalidate-v#{version}-darwin-arm64" : "jsonvalidate-v#{version}-darwin-amd64" => "jsonvalidate"
  end

  test do
    system "#{bin}/jsonvalidate", "-v"
  end
end
