# postfix_gmail

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with postfix_gmail](#setup)
    * [What postfix_gmail affects](#what-postfix_gmail-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with postfix_gmail](#beginning-with-postfix_gmail)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

The configures postfix to use Gmail as a relay

## Module Description

This module ensures that postfix is installed and running. It also adds cyrus sasl packages to handle encryption
to Google. The config file sets up the authentication and rate limiting.

## Setup

### What postfix affects

* postfix and related packages.
* /etc/postfix/main.cf

### Setup Requirements

Nothing special.

### Beginning with postfix


* Make sure postfix actually is your MTA of choice.
* Have a Gmail account for sending your server mail. Enable the less secure option.

## Usage

You can call the main class with username and password as below:

```
class { 'postfix_gmail':
  username => 'username@gmail.com',
  password => 'password',
} 
```

## Reference

There are two internal classes. One for installing the packages and another for managing the config.

## Limitations

This has only been tested on Centos/RHEL 7. It probably works anywhere with postfix in /etc/postfix.

## Development

Contributing: contact me and don't break the basic functionality.

## Release Notes/Contributors/Etc **Optional**

v0.1.0 - Christopher Miersma
