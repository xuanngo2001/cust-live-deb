#!/bin/bash
set -e
# Description: Deploy cld-tools.
this_script=$(basename "${0}")
DATE_TIME_STR=$(date +'%Y-%m-%d_%H.%M.%S')
CURR_EXEC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#mkdir -p ${CURR_EXEC_DIR}/logs; exec > >(tee ${CURR_EXEC_DIR}/logs/${this_script}_${DATE_TIME_STR}.log) 2>&1
echo "⭐ ============ ${this_script}: ${DATE_TIME_STR} ============"
echo "💲 ./${this_script} $*"


CLD_TOOLS_DIR="./scripts/repository/inst-min-con-cld-tools/cld/bin"
CLD_TOOLS_DIR=$(readlink -ev "${CLD_TOOLS_DIR}")

chmod +x ${CLD_TOOLS_DIR}/*.sh
yes | cp -av ${CLD_TOOLS_DIR}/*.sh /usr/local/bin/


echo "@@@@@@@@@@EEEE ${this_script} 👍 EEEE@@@@@@@@@@"