class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "https://downloads.ddev.com/ddev-live-cli/v0.7.1/brew/ddev-live.zip"
  version "0.7.1"
  sha256 "9d3ea7e2d79941568b001a44203f3471b4a1671458f523e3bbce9e4f471c9d75"

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
