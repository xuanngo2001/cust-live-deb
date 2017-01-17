#!/bin/bash
# Description: Tiling on JWM. Move active window to the right, left, top, bottom half section of the screen.

WIN_ID=$1
QUADRANT=$(echo $2 | tr '[:upper:]' '[:lower:]')
MARGIN=$3

if [ $# -eq 2 ]; then
  MARGIN_LEFT=0
  MARGIN_TOP=0
  MARGIN_RIGHT=0
  MARGIN_BOTTOM=0
else

  if [ $# -eq 3 ]; then
    MARGIN_LEFT=$(echo "${MARGIN}" | cut -d',' -f1)
    MARGIN_TOP=$(echo "${MARGIN}" | cut -d',' -f2)
    MARGIN_RIGHT=$(echo "${MARGIN}" | cut -d',' -f3)
    MARGIN_BOTTOM=$(echo "${MARGIN}" | cut -d',' -f4)
    
    IS_NUMBER_RE='^[0-9]+$'
    if ! [[ "${MARGIN_LEFT}" =~ ${IS_NUMBER_RE} ]] ; then echo "Error: ${MARGIN_LEFT} is not a number. Aborted!"; exit 1; fi
    if ! [[ "${MARGIN_TOP}" =~ ${IS_NUMBER_RE} ]] ; then echo "Error: ${MARGIN_TOP} is not a number. Aborted!"; exit 1; fi
    if ! [[ "${MARGIN_RIGHT}" =~ ${IS_NUMBER_RE} ]] ; then echo "Error: ${MARGIN_RIGHT} is not a number. Aborted!"; exit 1; fi
    if ! [[ "${MARGIN_BOTTOM}" =~ ${IS_NUMBER_RE} ]] ; then echo "Error: ${MARGIN_BOTTOM} is not a number. Aborted!"; exit 1; fi
  else
    echo "Error: Invalid arguments. Aborted!"
    exit 1
  fi
fi

echo -e "\tMARGIN (L, T, R, B): $MARGIN_LEFT, $MARGIN_TOP, $MARGIN_RIGHT, $MARGIN_BOTTOM "

# Get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')

### Calculate the window decorations(title bar height, borders)
#WIN_ID=$(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2) # OR: xprop -root _NET_ACTIVE_WINDOW
# xprop lists the sizes in this order: left, right, top, bottom
WIN_DECORATION=$(xprop -id ${WIN_ID} | grep FRAME_EXTENTS )
WIN_DECORATION_LEFT=$(echo   "${WIN_DECORATION}" | cut -d'=' -f2 | tr -d ' ' | cut -d',' -f1)
WIN_DECORATION_RIGHT=$(echo  "${WIN_DECORATION}" | cut -d'=' -f2 | tr -d ' ' | cut -d',' -f2)
WIN_DECORATION_TOP=$(echo    "${WIN_DECORATION}" | cut -d'=' -f2 | tr -d ' ' | cut -d',' -f3)
WIN_DECORATION_BOTTOM=$(echo "${WIN_DECORATION}" | cut -d'=' -f2 | tr -d ' ' | cut -d',' -f4)


### Get active window dimensions
WIN_WIDTH=$(xwininfo  -id ${WIN_ID} | grep Width  | tr -s ' ' | cut -d' ' -f3)
WIN_HEIGHT=$(xwininfo -id ${WIN_ID} | grep Height | tr -s ' ' | cut -d' ' -f3)

echo -e "\tFullscreen(W x H): $SCREEN_WIDTH x $SCREEN_HEIGHT"
echo -e "\tTarget Window id: ${WIN_ID}"
echo -e "\tTarget Window(W x H): ${WIN_WIDTH} x ${WIN_HEIGHT}"
echo -e "\tWIN_DECORATION(left, right, top, bottom): ${WIN_DECORATION}"

VIEW_WIDTH=$(( $SCREEN_WIDTH - $MARGIN_LEFT - $MARGIN_RIGHT ))
VIEW_HEIGHT=$(( $SCREEN_HEIGHT - $MARGIN_TOP - $MARGIN_BOTTOM ))

echo -e "\tVIEW(WxH): $VIEW_WIDTH x $VIEW_HEIGHT"

### Move window to the corresponding section of the screen.
case "${QUADRANT}" in
  
  top|up)
    X=$(( $MARGIN_LEFT ))
    Y=$(( $MARGIN_TOP  ))
    W=$(( $VIEW_WIDTH ))
    H=$(( $VIEW_HEIGHT/2 ))
    
    ;;
        
  bottom|down)
    X=$(( $MARGIN_LEFT ))
    Y=$(( $MARGIN_TOP + ($VIEW_HEIGHT/2) ))
    W=$(( $VIEW_WIDTH ))
    H=$(( $VIEW_HEIGHT/2 ))
    ;;

  left)
    X=$(( $MARGIN_LEFT ))
    Y=$(( $MARGIN_TOP  ))
    W=$(( $VIEW_WIDTH/2 ))
    H=$(( $VIEW_HEIGHT ))
    
    ;;

  right)
    X=$(( $MARGIN_LEFT + $VIEW_WIDTH/2 ))
    Y=$(( $MARGIN_TOP  ))
    W=$(( $VIEW_WIDTH/2 ))
    H=$(( $VIEW_HEIGHT ))
    ;;
    
  7)
    X=$MARGIN_LEFT
    Y=$MARGIN_TOP
    W=-1
    H=-1
    ;;

  8)
    X=$(( $VIEW_WIDTH/2 - $WIN_WIDTH/2 + $MARGIN_LEFT ))
    Y=$MARGIN_TOP
    W=-1
    H=-1
    ;;

  9)
    X=$(( $VIEW_WIDTH - $WIN_WIDTH + $MARGIN_LEFT ))
    Y=$MARGIN_TOP
    W=-1
    H=-1
    ;;

  4)
    X=$MARGIN_LEFT
    Y=$(( $VIEW_HEIGHT/2 - $WIN_HEIGHT/2 + $MARGIN_TOP ))
    W=-1
    H=-1
    ;;

  5)
    X=$(( $VIEW_WIDTH/2 - $WIN_WIDTH/2 + $MARGIN_LEFT ))
    Y=$(( $VIEW_HEIGHT/2 - $WIN_HEIGHT/2 + $MARGIN_TOP ))
    W=-1
    H=-1
    ;;

  6)
    X=$(( $VIEW_WIDTH - $WIN_WIDTH + $MARGIN_LEFT ))
    Y=$(( $VIEW_HEIGHT/2 - $WIN_HEIGHT/2 + $MARGIN_TOP ))
    W=-1
    H=-1
    ;;

  1)
    X=$MARGIN_LEFT
    Y=$(( $VIEW_HEIGHT - $WIN_HEIGHT + $MARGIN_TOP ))
    W=-1
    H=-1
    ;;

  2)
    X=$(( $VIEW_WIDTH/2 - $WIN_WIDTH/2 + $MARGIN_LEFT ))
    Y=$(( $VIEW_HEIGHT - $WIN_HEIGHT + $MARGIN_TOP ))
    W=-1
    H=-1
    ;;

  3)
    X=$(( $VIEW_WIDTH - $WIN_WIDTH + $MARGIN_LEFT ))
    Y=$(( $VIEW_HEIGHT - $WIN_HEIGHT + $MARGIN_TOP ))
    W=-1
    H=-1
    ;;

  *)
    echo "ERROR: Please provide section input(i.e. left, right, top or bottom)"
    echo "   e.g. $@"
    echo "   e.g. $0 right"
    exit 1
    ;;
esac


echo -e "\tX+Y (WxH): $X+$Y (${W} x ${H})"
# When resizing a window, the window must not be in a maximized state.
wmctrl -i -r ${WIN_ID} -b remove,maximized_vert,maximized_horz && wmctrl -i -r ${WIN_ID} -e 0,$X,$Y,$W,$H

echo -e "\twmctrl: $(wmctrl -lG | grep ${WIN_ID})"
