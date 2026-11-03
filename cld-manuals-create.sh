#!/bin/bash
set -e
# Description: Generate new version of manuals.
this_script=$(basename "${0}")
DATE_TIME_STR=$(date +'%Y-%m-%d_%H.%M.%S')
CURR_EXEC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#mkdir -p ${CURR_EXEC_DIR}/logs; exec > >(tee ${CURR_EXEC_DIR}/logs/${this_script}_${DATE_TIME_STR}.log) 2>&1
echo "⭐ ============ ${this_script}: ${DATE_TIME_STR} ============"
echo "💲 ./${this_script} $*"


script_name=$(basename "$0")

WIKI_DIR=/media/master/github/cust-live-deb.wiki

# Error handling
  if [ ! -d "${WIKI_DIR}" ]; then echo "Error: ${script_name}: Wiki directory: ${WIKI_DIR}: no such directory. Aborted!"; exit 1; fi;

WIKI_DIR=$(readlink -ev "${WIKI_DIR}")

( 
  cd ${WIKI_DIR}; 
  ./generate-manual.sh
  yes | cp -av *-manual.md    /media/master/github/cust-live-deb/repo/inst-min-win-jwm-help-manuals-text/cld/doc
  yes | cp -av *-manual.html  /media/master/github/cust-live-deb/repo/inst-std-help-manuals-html/cld/doc
  
  ./git-common-commits.sh
)


echo "@@@@@@@@@@EEEE ${this_script} 👍 EEEE@@@@@@@@@@"
