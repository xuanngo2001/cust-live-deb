#!/bin/bash
set -e
# Description: Open 2 terminals on startup in X window
# Requirements:
#   -xrandr, part of x11-xserver-utils package.
#   -wmctrl
#   -xfce4-terminal
#   -xterm for resize
#
# Usage: nohup x-terminal-emulator -T "open-2-terminals" -e /root/cld/open-terminals.sh


# Before doing anything, wait for Conky to start.
#   'pgrep conky' will display Conky's PID.
timeout 10s /bin/bash -c "while ! pgrep conky; do sleep 1s; echo 'Wait for Conky to run: 1s.'; done; sleep 1s"

# Abort if multiple conky instances exist.
CONKY_INSTANCES=$(wmctrl -lG | grep -i Conky | wc -l)
if [ "${CONKY_INSTANCES}" -gt 1 ]; then
  echo "$0: Error: There are ${CONKY_INSTANCES} Conky instances running. Aborted!"
  exit 1;
fi

TOP_TITLE="Top"
BOTTOM_TITLE="Bottom"
nohup x-terminal-emulator -T "${TOP_TITLE}" &
nohup x-terminal-emulator -T "${BOTTOM_TITLE}" &


# Wait until Top and Bottom terminals are created.
timeout 10s /bin/bash -c "while ! wmctrl -l|grep ' Top'; do sleep 1s; echo 'Wait for xTop to launch: 1s.'; done;"
timeout 10s /bin/bash -c "while ! wmctrl -l|grep ' Bottom'; do sleep 1s; echo 'Wait for xBottom to launch: 1s.'; done;"


# Move terminals.
CONKY_WIDTH=$(xwinsplitter--get-width.sh "conky (debian)")

MARGIN_LEFT=0
MARGIN_TOP=0
MARGIN_RIGHT=${CONKY_WIDTH}
MARGIN_BOTTOM=55
MARGIN="${MARGIN_LEFT},${MARGIN_TOP},${MARGIN_RIGHT},${MARGIN_BOTTOM}"

TOP_WIN_ID=$(xwinsplitter--id.sh "${TOP_TITLE}")
xwinsplitter.sh ${TOP_WIN_ID} 'top' ${MARGIN}

BOTTOM_WIN_ID=$(xwinsplitter--id.sh "${BOTTOM_TITLE}")
xwinsplitter.sh ${BOTTOM_WIN_ID} 'bottom' ${MARGIN}


### Close current terminal.
kill -9 $PPID

# Reference:
#   Get terminal columns and lines: http://stackoverflow.com/a/263900
#   Get screen geometry: http://superuser.com/a/487598
#   Convert geometry, pixel to columns + font width: http://askubuntu.com/a/32940
