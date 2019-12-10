class DdevLive < Formula
  desc "ddev-live: the command-line client for the DDEV Live platform"
  homepage "https://ddev.com"
  url "http://downloads.ddev.com/ddev-live-cli/v0.2.5-dev20191119b/darwin/ddev-live.zip"
  sha256 "96e63d86217274a3d83d9a9f2d13aa8933cc3500beca89286c5369070a89499b"

  bottle :unneeded

  def install
    bin.install "ddev-live"
  end 

  test do 
    system "#{bin}/ddev-live", "--version"
  end
end 

