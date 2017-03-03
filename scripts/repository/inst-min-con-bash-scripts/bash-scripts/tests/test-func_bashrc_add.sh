#!/bin/bash
set -e
# Description: Test func_bashrc_add.

. assert.sh

# Test empty parameter
  assert "func_bashrc_add"

# Test line starting with #(comment): Should be the same a empty parameter
  assert "func_bashrc_add #test add bashrc"

  assert "func_bashrc_add 'alias lx=ls -al'" "~/.bashrc: Added: alias lx=ls -al."
  sed -i 's/alias lx=.*//' ~/.bashrc

assert_end func_bashrc_add