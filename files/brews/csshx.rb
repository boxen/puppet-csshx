require 'formula'

class Csshx < Formula
  homepage 'http://code.google.com/p/csshx/'

  url 'http://csshx.googlecode.com/files/csshX-0.74.tgz'
  sha1 'aa686b71161d6144d539d077b960da10d7b96993'
  head 'https://code.google.com/p/csshx/', :using => :git

  version '0.74-boxen1'

  def install
    bin.install 'csshX'

    # Make symlinks for `cssh` as default command is `csshx`
    File.symlink bin+'csshx', bin+'cssh'
  end
end