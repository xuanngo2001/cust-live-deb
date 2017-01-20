#!/bin/bash
# Description: Tiling on JWM. Move active window to the right, left, top, bottom half section of the screen.
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')
echo "SCREEN xwininfo: ${SCREEN_WIDTH}x${SCREEN_HEIGHT}"
echo "wmctrl:"
wmctrl -d

echo "=========================="

TITLE=$1
TARGET_WIN_ID=$(wmctrl -l | grep ${TITLE} | cut -d' ' -f1)
echo "WIN_ID: ${TARGET_WIN_ID}"

#wmctrl -i -r ${TARGET_WIN_ID} -b toggle,fullscreen

TARGET_DECORATION=$(xprop -id ${TARGET_WIN_ID} | grep FRAME_EXTENTS )
TARGET_WIDTH=$(xwininfo -id ${TARGET_WIN_ID} | grep Width | tr -s ' ' | cut -d' ' -f3)
TARGET_HEIGHT=$(xwininfo -id ${TARGET_WIN_ID} | grep Height | tr -s ' ' | cut -d' ' -f3)
echo "xwininfo: ${TARGET_WIDTH}x${TARGET_HEIGHT}"
echo "xprop: ${TARGET_DECORATION}"

echo "wmctrl:"
wmctrl -lG | grep ${TITLE} 
echo ""
echo "xdotool:"
xdotool getwindowgeometry ${TARGET_WIN_ID}


echo "=========================="