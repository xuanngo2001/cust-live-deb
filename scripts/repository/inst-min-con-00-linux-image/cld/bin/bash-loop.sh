#!/bin/bash
set -e
# Description: List helpful commands for bashLoop.
#   Note: bashLoop-help.sh is in this dir because of mbashLoop.
#   Highlight comment: ./bashLoop-help.sh | grep -E '^|#.*'

cat << EndOfBashLoopHelp
  # While loop.
  while IFS='' read -r line || [[ -n "${line}" ]]; do
    echo "Do something ${line}"
  done < <( cat somefile.txt | grep -v '^#' | mawk NF )

  # Loop through array elements.
  animalNames=( cat dog fish )
  animalNames+=( bird )
  for animal in "${animalNames[@]}"
  do
    echo "********  ${animal}  ********"
  done
EndOfBashLoopHelp
