#!/bin/bash
set -e
# Description: Test func_dir_get_executing_path.

. assert.sh

# Test current directory.
  assert "func_dir_get_executing_path" "$(readlink -ev .)"

# Test call from different directory path.
  EXECUTING_FILE=${HOME}/a/b/c/d/executing_path.sh
  mkdir -p $(dirname ${EXECUTING_FILE})
  echo 'func_dir_get_executing_path' > ${EXECUTING_FILE}
  chmod +x ${EXECUTING_FILE}
  assert "${EXECUTING_FILE}" "$(dirname ${EXECUTING_FILE})"
  rm -rf ${HOME}/a
  
assert_end func_dir_get_executing_path