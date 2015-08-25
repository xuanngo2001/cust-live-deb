#!/bin/bash
# Description: Move active window to the right, left, top, bottom half section of the screen.
# Reference: http://unix.stackexchange.com/a/53228
#            http://ssokolow.com/quicktile/


# Get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')


#sum in px of all horizontal borders:
RIGHTMARGIN=5

### Move window to the corresponding section of the screen.
## Reduce the screen height due to the bottom system tray bar.
BOTTOMMARGIN=55 # Define the height in px of the bottom system tray bar.
SCREEN_HEIGHT=$(( $SCREEN_HEIGHT - $BOTTOMMARGIN ))

SECTION=$(echo $1 | tr '[:upper:]' '[:lower:]')
case "${SECTION}" in
  
  left)
    X=0
    Y=0
    W=$(( $SCREEN_WIDTH / 2 - $RIGHTMARGIN))
    H=$(( $SCREEN_HEIGHT ))
    
    ;;

  right)
    X=$(( $SCREEN_WIDTH / 2 ))
    Y=0
    W=$(( $SCREEN_WIDTH / 2 - $RIGHTMARGIN))
    H=$(( $SCREEN_HEIGHT ))
    ;;

  top)
    X=0
    Y=0
    W=$(( $SCREEN_WIDTH ))
    H=$(( $SCREEN_HEIGHT / 2 ))
    ;;
        
  bottom)
    X=0
    Y=$(( $SCREEN_HEIGHT / 2 ))
    W=$(( $SCREEN_WIDTH ))
    H=$(( $SCREEN_HEIGHT / 2 ))
    ;;

  *)
    echo "ERROR: Please provide section input(i.e. left, right, top or bottom)"
    echo "   e.g. $0 right"
    exit 1
    ;;
esac

# When resizing a window, the window must not be in a maximized state.
wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H
