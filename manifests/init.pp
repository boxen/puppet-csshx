# Public: Install Cluster SSH
#
# Examples
#
#   include csshx
#
class csshx {
  include homebrew

  homebrew::formula { 'csshx':
    source => 'puppet:///modules/csshx/brews/csshx.rb',
    before => Package['boxen/brews/csshx'] ;
  }

  package { 'boxen/brews/csshx':
    ensure  => '0.74-boxen1',
  }
}