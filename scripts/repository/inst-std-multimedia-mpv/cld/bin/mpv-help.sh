#!/bin/bash
set -e
# Description: List helpful commands for mpv
#   Highlight comment: ./mpv-help.sh | grep -E '^|#.*'

cat << EndOfMPVhelp
  # Play videos found: https://github.com/limelime/cust-live-deb/issues/268
  mpv -playlist <(find "$PWD" -type f)
  # $PWD is required. Otherwise, it'll try to go relative to the file descriptor's location, eg: "/dev/fd/./path/to/video-file.avi", which would fail to open.  
  
  # Extract audio from video file.
  mpv videofile.avi -o audiofile.mp3 --no-video
   
  # Extract audio from video file at a specific time.
  mpv videofile.avi -o audiofileAtSpecificTime.mp3 --no-video --start=00:01:00 --end=00:03:35
   
  # Extract audio from video file at a specific time for a relative length.
  mpv videofile.avi -o audiofile10Seconds.mp3 --no-video --start=0 --length=10
EndOfMPVhelp