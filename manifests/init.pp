
class cssh {
  include homebrew

  homebrew::formula { 'csshx':
    source => 'puppet:///modules/clusterssh/brews/csshx.rb',
    before => Package['boxen/brews/csshx'] ;
  }

  package { 'boxen/brews/csshx':
    ensure  => '0.74-boxen1',
  }
}