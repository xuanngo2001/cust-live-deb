#!/bin/bash

# Reference http://unix.stackexchange.com/a/14170
# wmctrl column definitions: http://askubuntu.com/a/564432


# wmctrl -r "Terminal" -e 1,0,0,398,198
# wmctrl -ia 0x0160008e -e 1,0,0,398,198

# TODO: Minimize all windows
#   You need xdotool windowminimize "$ID"
#   But for now, command key+d
sleep 5s

# Input file
WIN_POS_SIZE_FILE=save-windows-positions.txt

APPS_PID=()
## Open all applications
while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
  
  APPLICATION=$(echo ${LINE}|cut -d ',' -f 1)
  $APPLICATION&
  APPS_PID[${#APPS_PID[@]}]=$!
done < <(cat ${WIN_POS_SIZE_FILE} | grep -v "^#" )



# OFFSET due to decoration
OFFSET_X=6
OFFSET_Y=44
WIN_IDS=()

## Position and resize all applications.
while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
  
  WIN_TITLE=$(echo ${LINE}|cut -d ',' -f 7 | sed -e 's/^[ \t]*//' | sed -e 's/[ \t]*$//')
  
  # Wait until application is loaded
  timeout 7s /bin/bash -c "while ! $(wmctrl -lG | grep -q ${WIN_TITLE}); do sleep 1s; done; sleep 1s"
  
  # Extract window ID, position and size.
  WIN_ID=$(wmctrl -lG |grep "${WIN_TITLE}" | head -n 1 | cut -d ' ' -f 1)
  WIN_X=$(echo ${LINE}|cut -d ',' -f 2| sed -e 's/^[ \t]*//' | sed -e 's/[ \t]*$//') # Both sed commands are used to remove spaces at the start and the end.
  WIN_Y=$(echo ${LINE}|cut -d ',' -f 3| sed -e 's/^[ \t]*//' | sed -e 's/[ \t]*$//') # Both sed commands are used to remove spaces at the start and the end.
  WIN_W=$(echo ${LINE}|cut -d ',' -f 4| sed -e 's/^[ \t]*//' | sed -e 's/[ \t]*$//') # Both sed commands are used to remove spaces at the start and the end.
  WIN_H=$(echo ${LINE}|cut -d ',' -f 5| sed -e 's/^[ \t]*//' | sed -e 's/[ \t]*$//') # Both sed commands are used to remove spaces at the start and the end.

  # Subtract the offset due to decoration
  WIN_X=$(($WIN_X-$OFFSET_X))
  WIN_Y=$(($WIN_Y-$OFFSET_Y))
  
  # Position and resize window.
  wmctrl -ia $WIN_ID -e 1,$WIN_X,$WIN_Y,$WIN_W,$WIN_H
  
  # Storing WIN_ID
  WIN_IDS[${#WIN_IDS[@]}]=$WIN_ID
  
done < <(cat ${WIN_POS_SIZE_FILE} | grep -v "^#" )


## Take screenshots
rm -f screenshots/cld_screenshot_01.jpg
gnome-screenshot -f screenshots/cld_screenshot_01.jpg

## Close all applications gracefully.
for WIN_ID in "${WIN_IDS[@]}"
do
  echo "Close $WIN_ID." 
  wmctrl -ic $WIN_ID
done
