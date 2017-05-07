class postfix_gmail::packages {

  $packages = [ 'postfix', 'cyrus-sasl-plain', 'cyrus-sasl-lib', 'cyrus-sasl' ]

  package { $packages: ensure => 'installed'}

}
