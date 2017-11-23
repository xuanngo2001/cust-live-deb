#!/bin/bash
set -e
# Description: List helpful commands for mpv
#   Highlight comment: ./mpv-help.sh | grep -E '^|#.*'

cat << EndOfMPVhelp
  # Play videos found
  mpv -playlist <(locate somepattern | grep otherpattern)
  mpv -playlist <(find . -type f -name '*.avi' -o -name '*.mkv' -o -name '*.mp4' -o -name '*.mpg' -o -name '*.mpeg' -o -name '*.rmvb' -o -name '*.rm')
  
  # Extract audio from video file.
  mpv videofile.avi -o audiofile.mp3 --no-video
   
  # Extract audio from video file at a specific time.
  mpv videofile.avi -o audiofileAtSpecificTime.mp3 --no-video --start=00:01:00 --end=00:03:35
   
  # Extract audio from video file at a specific time for a relative length.
  mpv videofile.avi -o audiofile10Seconds.mp3 --no-video --start=0 --length=10
EndOfMPVhelp