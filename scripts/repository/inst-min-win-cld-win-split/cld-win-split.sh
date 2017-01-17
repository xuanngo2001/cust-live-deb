#!/bin/bash
set -e
# Description:

QUADRANT=$1


WIN_ID=$(xwinsplitter--id.sh :active:)
CONKY_WIDTH=$(xwinsplitter--get-width.sh "conky (debian)")

MARGIN_LEFT=0
MARGIN_TOP=0
MARGIN_RIGHT=${CONKY_WIDTH}
MARGIN_BOTTOM=55
MARGIN="${MARGIN_LEFT},${MARGIN_TOP},${MARGIN_RIGHT},${MARGIN_BOTTOM}"

xwinsplitter.sh ${WIN_ID} ${QUADRANT} ${MARGIN}