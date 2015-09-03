#!/bin/bash
set -e
ACTION=$(echo $1 | tr '[:upper:]' '[:lower:]')
case "${ACTION}" in
  
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

  *)
    echo "ERROR: Please provide ACTION(i.e. left, right, top or bottom)"
    echo "   e.g. $0 right"
    exit 1
    ;;
esac
