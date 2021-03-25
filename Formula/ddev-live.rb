class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "https://downloads.ddev.com/ddev-live-cli/v0.9.4/brew/ddev-live.zip"
  version "0.9.4"
  sha256 "15c1903093fa1329b592edb621c55a598d49a13362bc736133a2b7fcaab17dd7"

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
