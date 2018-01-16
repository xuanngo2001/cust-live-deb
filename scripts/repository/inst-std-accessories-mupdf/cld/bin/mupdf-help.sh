#!/bin/bash
set -e
# Description: List helpful commands for mupdf
#   Reference: https://mupdf.com/docs/manual
#   Highlight comment: ./mupdf-help.sh | grep -E '^|#.*'

cat << EndOfMupdfHelp

  The right mouse button selects a region and copies the marked text to the clipboard.
      Ctrl+c, Ctrl+v, 
  [         Rotate counter-clockwise.
  ]         Rotate clockwise.
  [num]g    Go to page number.
  /         Start searching forward.
  ?         Start searching backward.
  n         Continue searching forward.
  N         Continue searching backward.
  
EndOfMupdfHelp