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


# Get column width of conky.
# To make life easier, assume font width = 10pixels. Otherwise, use xprop to find out.
CONKY_WIDTH_PIXELS=$(wmctrl -lG | grep -i Conky | tr -s ' ' | cut -d' ' -f5)
CONKY_WIDTH_CHAR=$((${CONKY_WIDTH_PIXELS}/10))

# Maximize the current terminal to get the maximum columns and lines. Note: Don't use :ACTIVE:, the active window might not be the terminal.
wmctrl -r "open-2-terminals" -b toggle,maximized_vert,maximized_horz

# update $COLUMNS $LINES with new values.
resize

# Get the maximum columns and lines availables.
COLUMNS=$(tput cols)
LINES=$(tput lines)

# Adjust columns and lines values.
COLUMNS=$((${COLUMNS}-${CONKY_WIDTH_CHAR}))
LINES_HALF1=$((${LINES}/2-1))
LINES_HALF2=$((${LINES_HALF1}-1))

# Get screen geometry.
SCREEN_RESOLUTION=$(xrandr | head -n1 | cut -d, -f2 | cut -d" " -f3-5)
WIDTH=$(echo ${SCREEN_RESOLUTION}|sed 's/ .*//')
HEIGHT=$(echo ${SCREEN_RESOLUTION}|sed 's/^.*x //')
HEIGHT_HALF=$((${HEIGHT}/2))

# Open the terminal with specified sizes.
TERMINAL_APP=$(echo '' | update-alternatives --config x-terminal-emulator | grep '^*' | sed 's|.* /|/|' | cut -d' ' -f1)
TERMINAL_APP=$(basename "${TERMINAL_APP}")
case "${TERMINAL_APP}" in
  xfce4-terminal|xfce4-terminal.wrapper) # xfce4-terminal.wrapper doesn't handle --geometry parameter.
    nohup xfce4-terminal --title="Top"    --geometry="${COLUMNS}x${LINES_HALF1}+0+0" &
    nohup xfce4-terminal --title="Bottom" --geometry="${COLUMNS}x${LINES_HALF2}+0+${HEIGHT_HALF}" &
    ;;
  stterm)
    nohup "${TERMINAL_APP}" -T "Top"    -g "${COLUMNS}x${LINES_HALF1}+0+0" &
    nohup "${TERMINAL_APP}" -T "Bottom" -g "${COLUMNS}x${LINES_HALF2}+0+${HEIGHT_HALF}" &
    ;;
  *)
    echo "Error: ${TERMINAL_APP}: Unknown x-terminal-emulator. Aborted!"
    exit 1;
    ;;    
esac

### Close current terminal.
#kill -9 $PPID

# Reference:
#   Get terminal columns and lines: http://stackoverflow.com/a/263900
#   Get screen geometry: http://superuser.com/a/487598
#   Convert geometry, pixel to columns + font width: http://askubuntu.com/a/32940
