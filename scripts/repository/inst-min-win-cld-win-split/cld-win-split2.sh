#!/bin/bash
set -e
# Description:

QUADRANT=$1

XWINSPLITTER_DIR=$(readlink -ev /usr/local/bin/xwinsplitter)


WIN_ID=$("${XWINSPLITTER_DIR}/xwinsplitter--id.sh" :active:)

MARGIN_LEFT=0
MARGIN_TOP=0
MARGIN_RIGHT=260
MARGIN_BOTTOM=55
MARGIN="${MARGIN_LEFT},${MARGIN_TOP},${MARGIN_RIGHT},${MARGIN_BOTTOM}"

${XWINSPLITTER_DIR}/xwinsplitter.sh ${WIN_ID} ${QUADRANT} ${MARGIN}