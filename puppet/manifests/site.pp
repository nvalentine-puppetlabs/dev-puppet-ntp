node 'ntpserver.puppetlabs.vm' {
  class { 'ntp':
    udlc => true,
    servers => [],
  }
}

node 'ntpclient.puppetlabs.vm' {
  class { 'ntp':
    servers => ['ntpserver.puppetlabs.vm'],
  }
}

node default { 
  notify { "${::hostname} fell through to default node classification.": }
}
