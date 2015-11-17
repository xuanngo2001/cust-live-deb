#!/bin/bash
# Description: Tiling on JWM. Move active window to the right, left, top, bottom half section of the screen.
# Reference: http://unix.stackexchange.com/a/53228
#            http://ssokolow.com/quicktile/
#            https://github.com/TheWanderer/stiler/tree/master
# Note: xprop FRAME_EXTENTS doesn't seem to give the right number.
#
#    Screen section layout
#    +-----------+
#    | 7 | 8 | 9 |
#    +-----------+
#    | 4 | 5 | 6 |
#    +-----------+
#    | 1 | 2 | 3 |
#    +-----------+


# Define menu bar height
MENU_BAR_HEIGHT=55

# Get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')
SCREEN_HEIGHT=$(( $SCREEN_HEIGHT - $MENU_BAR_HEIGHT ))

### Calculate the window decorations(title bar height, borders)
ACTIVE_WIN_ID=$(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2) # OR: xprop -root _NET_ACTIVE_WINDOW
# xprop lists the sizes in this order: left, right, top, bottom
#   Select FRAME_EXTENTS
#   Get the values
#   Delete spaces
LEFT_OFFSET=$(xprop -id ${ACTIVE_WIN_ID} | grep FRAME_EXTENTS | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 1)
RIGHT_OFFSET=$(xprop -id ${ACTIVE_WIN_ID} | grep FRAME_EXTENTS | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 2)
TOP_OFFSET=$(xprop -id ${ACTIVE_WIN_ID} | grep FRAME_EXTENTS | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 3)
BOTTOM_OFFSET=$(xprop -id ${ACTIVE_WIN_ID} | grep FRAME_EXTENTS | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 4)


### Get active window dimensions
WIN_WIDTH=$(xwininfo -id ${ACTIVE_WIN_ID} | grep Width | tr -s ' ' | cut -d' ' -f3)
WIN_HEIGHT=$(xwininfo -id ${ACTIVE_WIN_ID} | grep Height | tr -s ' ' | cut -d' ' -f3)

echo "W x H: $SCREEN_WIDTH x $SCREEN_HEIGHT"
echo "MENU_BAR_HEIGHT: $MENU_BAR_HEIGHT"
echo "Window dimension(W x H): ${WIN_WIDTH} x ${WIN_HEIGHT}"

### Move window to the corresponding section of the screen.
SECTION=$(echo $1 | tr '[:upper:]' '[:lower:]')
case "${SECTION}" in
  
  left)
    X=$LEFT_OFFSET
    Y=0
    W=$(( $SCREEN_WIDTH / 2 - $LEFT_OFFSET - $RIGHT_OFFSET ))
    H=$SCREEN_HEIGHT
    
    ;;

  right)
    X=$(( $SCREEN_WIDTH / 2 + $LEFT_OFFSET ))
    Y=0
    W=$(( $SCREEN_WIDTH / 2 - $LEFT_OFFSET - $RIGHT_OFFSET ))
    H=$SCREEN_HEIGHT  
    ;;

  top|up)
    X=0
    Y=0
    W=$(( $SCREEN_WIDTH - $LEFT_OFFSET - $RIGHT_OFFSET ))
    H=$(( ($SCREEN_HEIGHT-$TOP_OFFSET)/2 ))
    
    ;;
        
  bottom|down)
    X=0
    Y=$(( $SCREEN_HEIGHT / 2 + ($TOP_OFFSET/2) ))
    W=$(( $SCREEN_WIDTH - $LEFT_OFFSET - $RIGHT_OFFSET ))
    H=$(( ($SCREEN_HEIGHT-$TOP_OFFSET)/2 ))
    ;;
  
  7)
    X=0
    Y=0
    W=-1
    H=-1
    ;;

  8)
    X=$(( $SCREEN_WIDTH/2 - $WIN_WIDTH/2 ))
    Y=0
    W=-1
    H=-1
    ;;

  9)
    X=$(( $SCREEN_WIDTH - $WIN_WIDTH ))
    Y=0
    W=-1
    H=-1
    ;;

  4)
    X=0
    Y=$(( $SCREEN_HEIGHT/2 - $WIN_HEIGHT/2 ))
    W=-1
    H=-1
    ;;

  5)
    X=$(( $SCREEN_WIDTH/2 - $WIN_WIDTH/2 ))
    Y=$(( $SCREEN_HEIGHT/2 - $WIN_HEIGHT/2 ))
    W=-1
    H=-1
    ;;

  6)
    X=$(( $SCREEN_WIDTH - $WIN_WIDTH ))
    Y=$(( $SCREEN_HEIGHT/2 - $WIN_HEIGHT/2 ))
    W=-1
    H=-1
    ;;

  1)
    X=0
    Y=$(( $SCREEN_HEIGHT - $WIN_HEIGHT ))
    W=-1
    H=-1
    ;;

  2)
    X=$(( $SCREEN_WIDTH/2 - $WIN_WIDTH/2 ))
    Y=$(( $SCREEN_HEIGHT - $WIN_HEIGHT ))
    W=-1
    H=-1
    ;;

  3)
    X=$(( $SCREEN_WIDTH - $WIN_WIDTH ))
    Y=$(( $SCREEN_HEIGHT - $WIN_HEIGHT ))
    W=-1
    H=-1
    ;;

  *)
    echo "ERROR: Please provide section input(i.e. left, right, top or bottom)"
    echo "   e.g. $0 right"
    exit 1
    ;;
esac


echo "Y -> top + height + bottom: $Y -> $TOP_OFFSET + $H + $BOTTOM_OFFSET"

# When resizing a window, the window must not be in a maximized state.
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H
