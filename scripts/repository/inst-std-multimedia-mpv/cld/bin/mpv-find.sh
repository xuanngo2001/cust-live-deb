#!/bin/bash
set -e
# Description: Find all video files and play from directory.
#   Reference: https://github.com/limelime/cust-live-deb/issues/268

# Error handling.
  if [ -z "$1" ]; then
    echo "Error: Input can't be empty. Aborted!"
    exit 1;
  fi

# Play all videos.
  dir_path=$(readlink -ev "$1")
  mpv -playlist <(find "${dir_path}" -type f -iname '*.avi'\
                                          -o -iname '*.asf'\
                                          -o -iname '*.m4v'\
                                          -o -iname '*.mkv'\
                                          -o -iname '*.mov'\
                                          -o -iname '*.mp4'\
                                          -o -iname '*.mpg'\
                                          -o -iname '*.mpeg'\
                                          -o -iname '*.rmvb'\
                                          -o -iname '*.rm'\
                                          -o -iname '*.flv'\
                                          -o -iname '*.ogg'\
                                          -o -iname '*.wma'\
                                          -o -iname '*.wmv'\
                                          -o -iname '*.webm'\
                                          -o -iname '*.vob')
