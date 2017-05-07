class postfix_gmail::config {

  file { '/etc/postfix/sasl_passwd':
    ensure => file,
    mode => 600,
    owner => root,
    group => root,
    content => template("postfix/sasl_passwd.erb"),
  }
  
  exec { 'Create password' :
     command => 'postmap /etc/postfix/sasl_passwd',
     path => ['/usr/sbin'],
     user => 'root',
     cwd => '/etc/postfix',
     creates => '/etc/postfix/sasl_passwd.db',
     notify => Service['postfix'],
  }

  exec { 'Refresh password' :
     command => 'postmap /etc/postfix/sasl_passwd',
     path => ['/usr/sbin'],
     user => 'root',
     cwd => '/etc/postfix',
     creates => '/etc/postfix/sasl_passwd.db',
     subscribe => File['/etc/postfix/sasl_passwd'],
     refreshonly => true,
     notify => Service['postfix'],
  }

  file { '/etc/postfix/main.cf':
    ensure => file,
    owner => root,
    group => root,
    mode => 644,
    source => "puppet:///modules/postfix/main.cf",
    notify => Service['postfix'],
  }

  service { 'postfix':
    ensure => running,
    enable => true,
  }
}
