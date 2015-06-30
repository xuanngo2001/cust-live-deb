#!/bin/bash
# Description: Play slideshow of pictures and continue where you left off.
# Usage: You have to press ENTER to mark your position.

FILELIST=$1

# Error Handling
##################################################################
if [ -z ${FILELIST} ]; then
  echo "ERROR: Please provide a filelist containing list of path to your pictures."
  echo " e.g.: $0 my_file_list.txt"
  exit 1
fi

if [ ! -e ${FILELIST} ] || [ ! -f ${FILELIST} ]; then
  echo "ERROR: ${FILELIST} : No such file."
  exit 1
fi


# Main logic here:
#   -Make a temporary copy of filelist.(*.tmp)
#   -Save the line number of current viewing file when ENTER is pressed.(*.last)
#   -On the next run, remove all viewed files using the saved line number.(sed)
##################################################################
FILELIST="${FILELIST##*/}"
if [ -e ${FILELIST}.last ];
then
  LAST_LINE=$(tail -n 1 ${FILELIST}.last)
  sed -i "1,${LAST_LINE}d" ${FILELIST}.tmp
else
  if [ ! -e ${FILELIST}.tmp ];
  then
    cp ${FILELIST} ${FILELIST}.tmp
  fi
fi



# If ENTER is not pressed, then ${FILELIST}.tmp will not shrink.
rm -f ${FILELIST}.last


feh -d -Y -F -D 1.5 -f ${FILELIST}.tmp -G -A "echo %u > ${FILELIST}.last"
# -d       : Draw the filename at the top-left of the image.
# -Y       : Hide mouse pointer.
# -F       : Fullscreen.
# -D 1.5   : Delay 1.5 seconds before showing the next picture.
# -f file  : Filelist 
# -G       : Draw the defined actions and what they do at the top-left of the image.
# -A action: Execute action.