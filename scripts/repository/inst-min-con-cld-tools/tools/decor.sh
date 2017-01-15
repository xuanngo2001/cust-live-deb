#!/bin/bash
# Get the coordinates of the active window's
#    top-left corner, and the window's size.
#    This excludes the window decoration.
# http://unix.stackexchange.com/questions/14159/how-do-i-find-the-window-dimensions-and-position-accurately-including-decoration

TITLE=$1
TARGET_WIN_ID=$(wmctrl -l | grep ${TITLE} | cut -d' ' -f1)
echo $TARGET_WIN_ID
  unset x y w h
  eval $(xwininfo -id ${TARGET_WIN_ID} |
    sed -n -e "s/^ \+Absolute upper-left X: \+\([0-9]\+\).*/x=\1/p" \
           -e "s/^ \+Absolute upper-left Y: \+\([0-9]\+\).*/y=\1/p" \
           -e "s/^ \+Width: \+\([0-9]\+\).*/w=\1/p" \
           -e "s/^ \+Height: \+\([0-9]\+\).*/h=\1/p" )
  echo "(x,y) (wxh)=> ($x, $y) ($w x $h)"
#

echo "=========================="