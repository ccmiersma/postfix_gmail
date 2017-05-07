# Class: postfix_gmail
# ===========================
#
# Full description of class postfix_gmail here.
#
# Parameters
# ----------
#
# This class is fairly limited, it requires username and password only.
#
# * `username`
#  This is your GMail username in the form `username@gmail.com`
# * `password`
#  You password
#
#
# Examples
# --------
#
# @example
#    class { 'postfix_gmail':
#      username => username@gmail.com,
#      password => password
#    }
#
# Authors
# -------
#
# Christopher Miersma <ccmiersma@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2017 Christopher Miersma
#
class postfix_gmail ( $username = 'user@gmail.com', $password = 'password'){

  include postfix_gmail::packages
  include postfix_gmail::config
}
