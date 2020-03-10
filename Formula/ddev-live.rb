class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "https://downloads.ddev.com/ddev-live-cli/v0.4.2/darwin/ddev-live.zip"
  version "0.4.2"
  sha256 "305c4854d93b534cdf5893cfed41ae3da083851d052c271d788371b35ea3b4d0"

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
