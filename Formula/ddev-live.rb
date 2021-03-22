class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "https://downloads.ddev.com/ddev-live-cli/v0.9.3/brew/ddev-live.zip"
  version "0.9.3"
  sha256 "88dc038c9438a15be3e0508526dd1506b732c975e932554f4439e313d73cc177"

  bottle :unneeded

  def install
    if OS.mac?
      bin.install "darwin/ddev-live"
    else
      bin.install "linux/ddev-live"
    end

    bash_completion.install "ddev-live_completion_bash.sh" => "ddev-live"
    zsh_completion.install "ddev-live_completion_zsh.sh" => "ddev-live"
  end

  test do
    system "#{bin}/ddev-live", "--version"
  end
end
