#!/bin/bash
set -e
# Description: List helpful commands for sound
#   Reference: https://sound.com/docs/manual
#   Highlight comment: ./sound-help.sh | grep -E '^|#.*'

cat << EndOfSoundHelp

  # Sound card number.
  arecord -l | grep card | cut -d ':' -f1 | sed 's/card //'
  
  # List available controls.
  amixer scontrols
  
  # Example using amixer.
  amixer -c ${card_num} sset 'Master',0 80%,40% unmute cap
  
  # Alsamixer keys: https://wiki.ubuntu.com/Audio/Alsamixer
  #   Left volume channel up = q
  #   Left volume channel down = z
  #   Right volume channel up = e
  #   Right volume channel down = c
  
EndOfSoundHelp