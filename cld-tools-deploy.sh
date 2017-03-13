#!/bin/bash
set -e
# Description: Deploy cld-tools.

CLD_TOOLS_DIR="./scripts/repository/inst-min-con-cld-tools/cld/bin"
CLD_TOOLS_DIR=$(readlink -ev "${CLD_TOOLS_DIR}")

chmod +x ${CLD_TOOLS_DIR}/*.sh
yes | cp -av ${CLD_TOOLS_DIR}/*.sh /usr/local/bin/