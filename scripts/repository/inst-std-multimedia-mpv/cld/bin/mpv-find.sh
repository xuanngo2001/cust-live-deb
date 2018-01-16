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
  mpv -playlist <(find "${dir_path}" -type f -iname '*.avi' -o -iname '*.mkv' -o -iname '*.mp4' -o -iname '*.mpg' -o -iname '*.mpeg' -o -iname '*.rmvb' -o -iname '*.rm' -o -iname '*.flv' -o -iname '*.ogg' -o -iname '*.vob')
