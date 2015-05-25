#!/bin/bash
set -e
# Description: Commands that will run on JWM startup.

# Applications that will run on JWM startup.
/usr/bin/volumeicon &
/usr/bin/conky &
/usr/bin/wicd-gtk -t &

# Open 2 terminals.
COLUMNS=80
LINES=24
Y_POSITION=240
xfce4-terminal --title="Top" --geometry=${COLUMNS}x${LINES}+0+0 &
xfce4-terminal --title="Bottom" --geometry=${COLUMNS}x${LINES}+0+${Y_POSITION} &