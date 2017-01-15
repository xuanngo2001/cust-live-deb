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
# xwininfo -root -tree 
# xwininfo -root -children
#
# ./tt.sh $(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2) up
# xprop	    -> x11-utils
# xwininfo  -> x11-utils
# http://askubuntu.com/questions/576604/what-causes-the-deviation-in-the-wmctrl-window-move-command
# https://raphaelwimmer.wordpress.com/2006/06/17/change-window-title-swap-window-between-two-desktops/
# https://gist.github.com/mkoura/c055133b841f0f0ebd527b4335c96c08
TARGET_WIN_ID=$1
SECTION=$(echo $2 | tr '[:upper:]' '[:lower:]')

MARGIN_LEFT=0
MARGIN_TOP=0
MARGIN_RIGHT=0
MARGIN_BOTTOM=54

# Define menu bar height
MENU_BAR_HEIGHT=55

# Get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')
#SCREEN_HEIGHT=$(( $SCREEN_HEIGHT - $MENU_BAR_HEIGHT ))

### Calculate the window decorations(title bar height, borders)
#TARGET_WIN_ID=$(xprop -root 32x '\t$0' _NET_ACTIVE_WINDOW | cut -f 2) # OR: xprop -root _NET_ACTIVE_WINDOW
# xprop lists the sizes in this order: left, right, top, bottom
#   Select FRAME_EXTENTS
#   Get the values
#   Delete spaces
TARGET_DECORATION=$(xprop -id ${TARGET_WIN_ID} | grep FRAME_EXTENTS )
TARGET_DECORATION_LEFT=$(echo "${TARGET_DECORATION}" | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 1)
TARGET_DECORATION_RIGHT=$(echo "${TARGET_DECORATION}"| cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 2)
TARGET_DECORATION_TOP=$(echo "${TARGET_DECORATION}" | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 3)
TARGET_DECORATION_BOTTOM=$(echo "${TARGET_DECORATION}"| cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 4)


### Get active window dimensions
TARGET_WIDTH=$(xwininfo -id ${TARGET_WIN_ID} | grep Width | tr -s ' ' | cut -d' ' -f3)
TARGET_HEIGHT=$(xwininfo -id ${TARGET_WIN_ID} | grep Height | tr -s ' ' | cut -d' ' -f3)

echo "MENU_BAR_HEIGHT: $MENU_BAR_HEIGHT"
echo "Fullscreen(W x H): $SCREEN_WIDTH x $SCREEN_HEIGHT"
echo "Target Window id: ${TARGET_WIN_ID}"
echo "Target Window(W x H): ${TARGET_WIDTH} x ${TARGET_HEIGHT}"
echo "TARGET_DECORATION(left, right, top, bottom): ${TARGET_DECORATION}"

SEPARATOR=0
VIEW_WIDTH=$(( $SCREEN_WIDTH - $MARGIN_LEFT - $MARGIN_RIGHT - $SEPARATOR ))
VIEW_HEIGHT=$(( $SCREEN_HEIGHT - $MARGIN_TOP - $MARGIN_BOTTOM - $SEPARATOR ))

### Move window to the corresponding section of the screen.
case "${SECTION}" in
  
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
    
  *)
    echo "ERROR: Please provide section input(i.e. left, right, top or bottom)"
    echo "   e.g. $@"
    echo "   e.g. $0 right"
    exit 1
    ;;
esac

# Get Conky window values.
CONKY_WIN_ID=$(wmctrl -l | grep -F ' conky ' | cut -d' ' -f1)
CONKY_DECORATION=$(xprop -id ${CONKY_WIN_ID} | grep FRAME_EXTENTS )
CONKY_DECORATION_LEFT=$(echo "${CONKY_DECORATION}" | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 1)
CONKY_DECORATION_RIGHT=$(echo "${CONKY_DECORATION}"| cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 2)
CONKY_DECORATION_TOP=$(echo "${CONKY_DECORATION}" | cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 3)
CONKY_DECORATION_BOTTOM=$(echo "${CONKY_DECORATION}"| cut -d '=' -f 2 | tr -d ' ' | cut -d ',' -f 4)
CONKY_INNER_WIDTH=$(xwininfo -id ${CONKY_WIN_ID} | grep Width | tr -s ' ' | cut -d' ' -f3)
CONKY_WIDTH=$(( $CONKY_INNER_WIDTH + $CONKY_DECORATION_LEFT + $CONKY_DECORATION_RIGHT ))

echo "CONKY_WIDTH: ${CONKY_WIDTH}"
echo "CONKY_DECORATION(left, right, top, bottom): ${CONKY_DECORATION}"


# Substract conky's width.
#W=$(( $W - $CONKY_WIDTH ))

echo "Y -> top + height + bottom: $Y -> $TARGET_DECORATION_TOP + $H + $TARGET_DECORATION_BOTTOM"
echo "X+Y(WxH): $X+$Y (${W} x ${H})"
# When resizing a window, the window must not be in a maximized state.
wmctrl -i -r ${TARGET_WIN_ID} -b remove,maximized_vert,maximized_horz && wmctrl -i -r ${TARGET_WIN_ID} -e 0,$X,$Y,$W,$H
