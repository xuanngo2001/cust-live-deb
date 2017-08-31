#!/bin/bash
set -e
# Description: List all icons

find /usr/share/icons/
find /usr/share/pixmaps/

# TODO: Display unique filename only. 
#   sed 's/^.*\///' | sort | uniq
