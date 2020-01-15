class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "http://downloads.ddev.com/ddev-live-cli/v0.3.0/darwin/ddev-live.zip"
  version "0.3.0"
  sha256 "bc8318e2b0c0ff21fba913ec3b89a2637476016417be8530c002abf449c5fe0e"

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
