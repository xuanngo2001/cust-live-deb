#!/bin/bash
set -e

# Description: Open 2 terminals on startup in X window
# Requirements:
#   -xrandr, part of x11-xserver-utils package.
#   -wmctrl
#   -xfce4-terminal


# Maximize the current terminal to get the maximum columns and lines.
wmctrl -r :ACTIVE: -b toggle,maximized_vert,maximized_horz
# update $COLUMNS $LINES with new values.
resize

# Get the maximum columns and lines availables.
COLUMNS=$(tput cols)
LINES=$(tput lines)
LINES_HALF1=$((${LINES}/2-1))
LINES_HALF2=$((${LINES_HALF1}-1))

# Get screen geometry.
SCREEN_RESOLUTION=$(xrandr | head -n1 | cut -d, -f2 | cut -d" " -f3-5)
WIDTH=$(echo ${SCREEN_RESOLUTION}|sed 's/ .*//')
HEIGHT=$(echo ${SCREEN_RESOLUTION}|sed 's/^.*x //')
HEIGHT_HALF=$((${HEIGHT}/2))

# Open the terminal with specified sizes.
nohup xfce4-terminal --title="Top" --geometry=${COLUMNS}x${LINES_HALF1}+0+0 2>/dev/null
nohup xfce4-terminal --title="Bottom" --geometry=${COLUMNS}x${LINES_HALF2}+0+${HEIGHT_HALF} 2>/dev/null

### Close current terminal.
#kill -9 $PPID

# Reference:
#   Get terminal columns and lines: http://stackoverflow.com/a/263900
#   Get screen geometry: http://superuser.com/a/487598
