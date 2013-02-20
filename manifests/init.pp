# Public: Installs vim via Homebrew.
#
# Examples
#
#   include vim
class vim {
  require boxen::config

  package { 'mercurial':
    ensure => present
  }

  package { 'vim':
    require => Package['mercurial']
  }
}
