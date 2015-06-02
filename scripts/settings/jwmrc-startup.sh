#!/bin/bash
set -e
# Description: Commands that will run on JWM startup.

# Applications that will run on JWM startup.
/usr/bin/volumeicon &
/usr/bin/conky &
/usr/bin/wicd-gtk -t &

