class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "https://downloads.ddev.com/ddev-live-cli/v0.5.0/darwin/ddev-live.zip"
  version "0.5.0"
  sha256 "8996152009783edfb3383a7eac5cd8e585a3106b043a8f529554412f764d3b01"

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
