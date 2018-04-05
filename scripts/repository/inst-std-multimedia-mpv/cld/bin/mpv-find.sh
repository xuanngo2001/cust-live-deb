#!/bin/bash
set -e
# Description: Find all video files and play from directory.
#   Usage: ./this-script.sh <dir/path>
#   Reference: https://github.com/limelime/cust-live-deb/issues/268

# Error handling.
  if [ -z "$1" ]; then
    echo "Error: Input can't be empty. Aborted!"
    exit 1;
  fi

# Play all videos.
  dir_path=$(readlink -ev "$1")
  mpv -playlist <(find "${dir_path}" -type f \
                                          -o -iname '*.asf'\
                                          -o -iname '*.avi'\
                                          -o -iname '*.flv'\
                                          -o -iname '*.m4v'\
                                          -o -iname '*.mkv'\
                                          -o -iname '*.mov'\
                                          -o -iname '*.mp4'\
                                          -o -iname '*.mpeg'\
                                          -o -iname '*.mpg'\
                                          -o -iname '*.ogg'\
                                          -o -iname '*.rm'\
                                          -o -iname '*.rmvb'\
                                          -o -iname '*.vob'\
                                          -o -iname '*.webm'\
                                          -o -iname '*.wma'\
                                          -o -iname '*.wmv'\
                                          )
