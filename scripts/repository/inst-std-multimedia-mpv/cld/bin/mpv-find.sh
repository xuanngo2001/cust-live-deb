#!/bin/bash
set -e
# Description: Find all video files and play from directory.

# Error handling.
  if [ -z "$1" ]; then
    echo "Error: Input can't be empty. Aborted!"
    exit 1;
  fi

# Play all videos.
  dir_path=$(readlink -ev "$1")
  mpv -playlist <(find "${dir_path}" -type f -name '*.avi' -o -name '*.mkv' -o -name '*.mp4' -o -name '*.mpg' -o -name '*.mpeg' -o -name '*.rmvb' -o -name '*.rm')
