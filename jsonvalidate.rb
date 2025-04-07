class Jsonvalidate < Formula
  desc "A Simple command-line tool for validating JSON files or input. Just checking if it parses"
  homepage "https://github.com/vicendominguez/jsonvalidate"
  version "0.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/vicendominguez/jsonvalidate/releases/download/v#{version}/jsonvalidate-v#{version}-darwin-arm64"
    sha256 "eafbd380479bd6533cc70ba71612d962b69072e24a511f65c32400bccf28ca92"
  else
    url "https://github.com/vicendominguez/jsonvalidate/releases/download/v#{version}/jsonvalidate-v#{version}-darwin-amd64"
    sha256 "c29e334db77908ca3ec0e3ecfd08a8f3b1a1f7246cf82f234040821e6d706339"
  end

  def install
    bin.install Hardware::CPU.arm? ? "jsonvalidate-v#{version}-darwin-arm64" : "jsonvalidate-v#{version}-darwin-amd64" => "jsonvalidate"
  end

  test do
    system "#{bin}/jsonvalidate", "--version"
  end
end
