#!/bin/bash
set -e
# Description: Test func_id.

. assert.sh

# Test no parameter.
  assert_raises "func_id" 1

# Test all types.
  ID_TYPES=(sec-short sec-medium sec-long)
  ID_TYPES+=(sec-full)
  GREP_TYPES=('........\......')          # sec-short
  GREP_TYPES+=('....-..-..\......')       # sec-medium
  GREP_TYPES+=('....-..-..\...\...\...')  # sec-long
  GREP_TYPES+=('..............')          # sec-full
  idx=0
  for type in "${ID_TYPES[@]}"
  do
    CMD_RESULTS=$(func_id ${type})
    if ! echo "${CMD_RESULTS}" | grep -q "^${GREP_TYPES[${idx}]}$" ; then
      assert "func_id ${type}" "${GREP_TYPES[${idx}]}" ""
    fi
    let idx=idx+1
  done  


assert_end func_id