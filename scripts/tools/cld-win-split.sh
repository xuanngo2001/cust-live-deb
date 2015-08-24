#!/bin/bash
# resizes the window to full height and 50% width and moves into upper right corner
# Reference: http://unix.stackexchange.com/a/53228

#define the height in px of the top system-bar:
TOPMARGIN=0

#define the height in px of the bottom system-bar:
BOTTOMMARGIN=55

#sum in px of all horizontal borders:
RIGHTMARGIN=7

# get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')


### Move window to the corresponding section of the screen.
SECTION=$(echo $1 | tr '[:upper:]' '[:lower:]')
echo $SECTION
case "${SECTION}" in
  
  left)
    X=0
    Y=0
    W=$(( $SCREEN_WIDTH / 2 ))
    H=$(( $SCREEN_HEIGHT ))
    
    ;;

  right)
    X=$(( $SCREEN_WIDTH / 2 ))
    Y=0
    W=$(( $SCREEN_WIDTH / 2 ))
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

wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H
