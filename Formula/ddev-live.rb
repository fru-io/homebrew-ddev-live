class DdevLive < Formula
  desc "The command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "http://downloads.ddev.com/ddev-live-cli/v0.2.5-dev20191119b/darwin/ddev-live.zip"
  version "0.2.5-dev20191119b"
  sha256 "96e63d86217274a3d83d9a9f2d13aa8933cc3500beca89286c5369070a89499b"

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
