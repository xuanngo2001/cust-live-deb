#!/bin/bash
set -e
# Description: Test func_cmd_exists.

. assert.sh

assert_raises "func_cmd_exists" 1
assert_raises "func_cmd_exists invalidCommand" 1
assert_raises "func_cmd_exists bash"

assert_end func_cmd_exists