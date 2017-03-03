#!/bin/bash
set -e
# Description: Test func_link.

. assert.sh

# Test no parameter.
assert_raises "func_link" 1

# Test link file
  mkdir -p test-data
  TARGET_NAME=test-data/func_link.txt
  LINK_NAME=test-data/func_link.lnk
  echo "func_link" > test-data/func_link.txt

  assert_raises "func_link ${TARGET_NAME} ${LINK_NAME}" 0
  assert "cat ${LINK_NAME}" "func_link" ""

  rm -f "${TARGET_NAME}"
  rm -f "${LINK_NAME}"

assert_end func_link