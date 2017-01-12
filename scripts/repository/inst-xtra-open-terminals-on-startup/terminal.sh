#!/bin/bash
set -e
# Description: Open 2 terminals on startup in X window

# Open the terminal with specified sizes.
COLUMNS=25
LINES_HALF1=10
LINES_HALF2=10
HEIGHT_HALF=20

TERMINAL_APP=$(echo '' | update-alternatives --config x-terminal-emulator | grep '^*' | sed 's|.* /|/|' | cut -d' ' -f1)
TERMINAL_APP=$(basename "${TERMINAL_APP}")
case "${TERMINAL_APP}" in
  xfce4-terminal|xfce4-terminal.wrapper)# xfce4-terminal.wrapper doesn't handle --geometry parameter.
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

# Wait until Top and Bottom terminals are created.
timeout 10s /bin/bash -c "while ! wmctrl -l|grep ' Top'; do sleep 1s; echo 'Wait for Top to launch: 1s.'; done; sleep 1s"
timeout 10s /bin/bash -c "while ! wmctrl -l|grep ' Bottom'; do sleep 1s; echo 'Wait for Bottom to launch: 1s.'; done; sleep 1s"

### Close current terminal.
#kill -9 $PPID

# Reference:
#   Get terminal columns and lines: http://stackoverflow.com/a/263900
#   Get screen geometry: http://superuser.com/a/487598
#   Convert geometry, pixel to columns + font width: http://askubuntu.com/a/32940
