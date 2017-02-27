#!/bin/bash
set -e
# Description: Generate new version of manuals.

WIKI_DIR=./scripts/settings/doc/cust-live-deb.wiki/

# Error handling
  if [ ! -d "${WIKI_DIR}" ]; then echo "Error: Wiki directory: ${WIKI_DIR}: no such directory. Aborted!"; exit 1; fi;

WIKI_DIR=$(readlink -ev "${WIKI_DIR}")

( cd ${WIKI_DIR}; ./generate-manual.sh )