#!/bin/bash
set -e
# Description: List all icons
#   Test case: files & symbolic links
#  Note: from ../inst-min-con-cld-tools/cld/bin

find /usr/share/icons/    -name '*.*'
find /usr/share/pixmaps/  -name '*.*'

# TODO: Display unique filename only. 
#   sed 's/^.*\///' | sort | uniq
