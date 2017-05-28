class Asdf < Formula
  desc "Extendable version manager with support for Ruby, Node.js, Elixir, Erlang & more"
  homepage "https://github.com/asdf-vm"
  url "https://github.com/asdf-vm/asdf/archive/v0.3.0.zip"
  sha256 "735470ef9f6501ce3dbd5200217051849f985ba55f437128b825c025ba456924"

  depends_on "coreutils" 
  depends_on "automake"
  depends_on "autoconf"
  depends_on "openssl" 
  depends_on "libyaml"
  depends_on "readline" 
  depends_on "libxslt"
  depends_on "libtool"
  depends_on "unixodbc"

  bottle :unneeded

  def install  
    bash_completion.install 'completions/asdf.bash'
    prefix.install Dir['*']
  end

  def caveats; <<-EOS.undent

    #########################################
     
    Add the following line to your bash profile (e.g. ~/.bashrc, ~/.profile, or ~/.bash_profile)

         source #{prefix}/asdf.sh

    #########################################
    EOS
  end

  test do
    system "#{bin}/asdf", "plugin-list"
  end
end
