#!/bin/bash -e
[[ $RUBY ]] || (echo 'please set $RUBY' && exit 1)

rvm remove $RUBY
rvm install $RUBY
rvm prepare $RUBY

gem install travis-artifacts
travis-artifacts upload --path "$RUBY.tar.bz2" --target-path binary
