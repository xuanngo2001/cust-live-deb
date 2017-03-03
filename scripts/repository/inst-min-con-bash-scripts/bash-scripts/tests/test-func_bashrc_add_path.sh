#!/bin/bash
set -e
# Description: Test func_bashrc_add_path.

. assert.sh

# Test empty parameter.
  assert_raises "func_bashrc_add_path" 1

# Test add path.
  PATH_UNIQ="${HOME}/78974651"
  mkdir -p "${PATH_UNIQ}"
  EXPECTED_RESULT='~/.bashrc: Added: PATH=$PATH:'"${PATH_UNIQ}."
  assert "func_bashrc_add_path ${HOME}/78974651" "${EXPECTED_RESULT}"
  sed -i 's/.*78974651.*//' ~/.bashrc

# Test invalid path.
  assert_raises "func_bashrc_add_path ${HOME}/someInvalidPath9653" 1
  
assert_end func_bashrc_add_path