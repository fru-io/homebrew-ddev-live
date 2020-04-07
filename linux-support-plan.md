# Support for Linuxbrew

- Create a Homebrew-specific release artifact ('/v1.2.3/brew/archive.zip') that
  contains both the MacOS and Linux artifacts for a release

- Inside 'def install':

``` 
def install
  # cross-platform prep (directories, etc)
  if OS.mac?
    # install mac binary
  else
    # install linux binary 
  end
  # cross-platform finish up (bash completion, etc)
end

test do
  # cross-platform test that the binary is available
end 
``` 
