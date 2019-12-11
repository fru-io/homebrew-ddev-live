class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "http://downloads.ddev.com/ddev-live-cli/v0.2.5-dev20191211/darwin/ddev-live.zip"
  version "0.2.5-dev20191211"
  sha256 "8d90448f0cbf25e9c727bb99c6db955b4213977d139eac47251f777bb926e7a6"

  bottle :unneeded

  def install
    bin.install "ddev-live"
    bash_completion.install "ddev-live_completion_bash.sh" => "ddev-live"
    zsh_completion.install "ddev-live_completion_zsh.sh" => "ddev-live"
  end

  test do
    system "#{bin}/ddev-live", "--version"
  end
end
