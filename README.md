# Puppet control module for git

This module provides a few resources for the [git](http://git-scm.com/) source
control management system.

## Installation

From the root of your puppet project:

    $ git submodule add git://github.com/blt/puppet-git.git modules/git

## Quickstart

To install git on a node place the following in a definition:

    include git

If you need to manage the `.gitconfig` of a user:

    git::resource::config { 'foo user git configuration':
      user => 'foo',
    }

Please examine the manifest and resource definitions for more details. They are thoroughly
documented.

