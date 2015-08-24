#!/bin/bash
# Description: Move active window to the right, left, top, bottom half section of the screen.
# Reference: http://unix.stackexchange.com/a/53228
#            http://ssokolow.com/quicktile/

#define the height in px of the top system-bar:
TOPMARGIN=0

#define the height in px of the bottom system-bar:
BOTTOMMARGIN=55

#sum in px of all horizontal borders:
RIGHTMARGIN=7

# get width of screen and height of screen
SCREEN_WIDTH=$(xwininfo -root | awk '$1=="Width:" {print $2}')
SCREEN_HEIGHT=$(xwininfo -root | awk '$1=="Height:" {print $2}')

# new width and height
W=$(( $SCREEN_WIDTH / 2 - $RIGHTMARGIN ))
H=$(( $SCREEN_HEIGHT - $TOPMARGIN - $BOTTOMMARGIN ))

# X, change to move left or right:

# moving to the right half of the screen:
RIGHT=$1
X=0
if [ "$RIGHT" = "right" ]; then
  X=$(( $SCREEN_WIDTH / 2 ))  
fi


Y=$TOPMARGIN

wmctrl -r :ACTIVE: -b remove,maximized_vert,maximized_horz && wmctrl -r :ACTIVE: -e 0,$X,$Y,$W,$H
