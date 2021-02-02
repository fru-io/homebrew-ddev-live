class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "https://downloads.ddev.com/ddev-live-cli/v0.9.2/brew/ddev-live.zip"
  version "0.9.2"
  sha256 "29ed47eff12c29fa61f7579473f7d7a99a9056ba1546d1cf9c2e24d318b49a5c"

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
