class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "https://downloads.ddev.com/ddev-live-cli/v0.5.4/brew/ddev-live.zip"
  version "0.5.4"
  sha256 "7fc541adf8676d18f77fa90ac13ecc441afb496ebd43dcbb2c3b4218b921751a"

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
