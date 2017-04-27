#!/bin/bash
set -e
# Description: Commit common files that are change constantly.

find scripts/repository/ -type f -name '*.sh.log' -exec git add '{}' + -exec git commit -m 'update *.sh.log' {} +

find scripts/repository/ -type f -name '*.sh.log.md' -exec git add '{}' + -exec git commit -m 'update *.sh.log.md' {} +