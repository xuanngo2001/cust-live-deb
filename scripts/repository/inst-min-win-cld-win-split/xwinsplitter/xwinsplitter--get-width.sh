#!/bin/bash
# Description: Return width of window including decoration.

TITLE=$1

WIN_ID=$(xwinsplitter--id.sh "${TITLE}")

DECORATION=$(xprop -id ${WIN_ID} | grep FRAME_EXTENTS )
DECORATION_LEFT=$(echo "${DECORATION}" | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 1)
DECORATION_RIGHT=$(echo "${DECORATION}"| cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 2)
DECORATION_TOP=$(echo "${DECORATION}" | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 3)
DECORATION_BOTTOM=$(echo "${DECORATION}"| cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 4)
INNER_WIDTH=$(xwininfo -id ${WIN_ID} | grep Width | tr -s ' ' | cut -d' ' -f3)
WIDTH=$(( $INNER_WIDTH + $DECORATION_LEFT + $DECORATION_RIGHT ))

echo "${WIDTH}"