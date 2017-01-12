#!/bin/bash
set -e
# Description: Test ssterm
# fc-list

#FONT_LINE="Unknown:style=Regular:size=16"
#stterm -T "${FONT_LINE}" -f "${FONT_LINE}"&

FONT_LINE="Liberation Mono:style=Regular:size=16"
stterm -T "${FONT_LINE}" -f "${FONT_LINE}"&

#FONT_LINE="Monospace:style=Regular:size=16"
#stterm -T "${FONT_LINE}" -f "${FONT_LINE}"&

FONT_LINE="Monospace:style=Regular:size=15"
stterm -T "${FONT_LINE}" -f "${FONT_LINE}"&

FONT_LINE="Monospace:style=Regular:size=14"
stterm -T "${FONT_LINE}" -f "${FONT_LINE}"&

FONT_LINE="Monospace:style=Regular:size=12"
stterm -T "${FONT_LINE}" -f "${FONT_LINE}"&  