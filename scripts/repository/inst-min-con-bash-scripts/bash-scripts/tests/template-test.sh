#!/bin/bash
set -e
# Description: Test FUNCTION_NAME.

. assert.sh

assert_raises "FUNCTION_NAME"

assert_end FUNCTION_NAME