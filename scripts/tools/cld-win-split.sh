#!/bin/bash
# Description: Move active window to the right, left, top, bottom half section of the screen.
# Reference: http://unix.stackexchange.com/a/53228
#            http://ssokolow.com/quicktile/
# Note: xprop FRAME_EXTENTS doesn't seem to give the right number.

# Define menu bar height
MENU_BAR_HEIGHT=55

# Get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')


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

echo "W x H: $SCREEN_WIDTH x $SCREEN_HEIGHT"
echo "MENU_BAR_HEIGHT: $MENU_BAR_HEIGHT"

### Move window to the corresponding section of the screen.
SECTION=$(echo $1 | tr '[:upper:]' '[:lower:]')
case "${SECTION}" in
  
  left)
    X=$LEFT_OFFSET
    Y=0
    W=$(( $SCREEN_WIDTH / 2 - $LEFT_OFFSET - $RIGHT_OFFSET ))
    H=$(( $SCREEN_HEIGHT - $MENU_BAR_HEIGHT ))
    
    ;;

  right)
    X=$(( $SCREEN_WIDTH / 2 + $LEFT_OFFSET ))
    Y=0
    W=$(( $SCREEN_WIDTH / 2 - $LEFT_OFFSET - $RIGHT_OFFSET ))
    H=$(( $SCREEN_HEIGHT - $MENU_BAR_HEIGHT ))
    ;;

  top|up)
    X=0
    Y=$(( $TOP_OFFSET ))
    W=$(( $SCREEN_WIDTH - $LEFT_OFFSET - $RIGHT_OFFSET ))
    H=$(( ($SCREEN_HEIGHT-$MENU_BAR_HEIGHT) / 2 - $TOP_OFFSET - $BOTTOM_OFFSET ))
    
    echo "Y -> top + height + bottom: $Y -> $TOP_OFFSET + $H + $BOTTOM_OFFSET"
    ;;
        
  bottom|down)
    X=0
    Y=$(( ($SCREEN_HEIGHT-$MENU_BAR_HEIGHT) / 2 + $TOP_OFFSET ))
    W=$(( $SCREEN_WIDTH - $LEFT_OFFSET - $RIGHT_OFFSET ))
    H=$(( ($SCREEN_HEIGHT-$MENU_BAR_HEIGHT) / 2 - $TOP_OFFSET - $BOTTOM_OFFSET ))
    echo "Y -> top + height + bottom: $Y -> $TOP_OFFSET + $H + $BOTTOM_OFFSET"
    ;;

  *)
    echo "ERROR: Please provide section input(i.e. left, right, top or bottom)"
    echo "   e.g. $0 right"
    exit 1
    ;;
esac



# When resizing a window, the window must not be in a maximized state.
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H
