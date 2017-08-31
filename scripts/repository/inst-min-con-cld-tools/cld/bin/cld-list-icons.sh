#!/bin/bash
set -e
# Description: List all icons
#   Test case: files & symbolic links

find /usr/share/icons/    -name '*.*'
find /usr/share/pixmaps/  -name '*.*'

# TODO: Display unique filename only. 
#   sed 's/^.*\///' | sort | uniq
