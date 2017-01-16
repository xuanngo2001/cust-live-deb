#!/bin/bash
set -e
# Description: Display ls with page and color.
# Usage: 
#   ls-page.sh [ls-options] [path]
#   ls-page.sh -l /usr/local/bin

ls -R --color $@ | less -r