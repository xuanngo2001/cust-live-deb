#!/bin/bash
set -e
# Description: Find all video files and play

# Doesn't work yet.
mpv -playlist <(find . -type f -name '*.avi' -o -name '*.mkv' -o -name '*.mp4' -o -name '*.mpg' -o -name '*.mpeg' -o -name '*.rmvb' -o -name '*.rm')

find . -name "artist name" -exec mplayer '{}' \;