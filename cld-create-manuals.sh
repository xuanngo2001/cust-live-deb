#!/bin/bash
# Description: Generate new version of manuals.

WIKI_DIR=./scripts/settings/doc/cust-live-deb.wiki/
cd ${WIKI_DIR}
./generate-manual.sh
cd -