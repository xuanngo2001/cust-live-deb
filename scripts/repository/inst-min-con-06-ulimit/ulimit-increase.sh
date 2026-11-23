#!/bin/bash
set -eo pipefail # Exit immediately if a command exits with a non-zero status and fail on pipe errors
# Description: Increase ulimit to 65536 instead of the decade old default value of 1024. 
#   Increase ulimitfor systemd and PAM sessions.
#   So that VScode doesn´t crash due to low file descriptor limits when opened.
this_script=$(basename "${0}")
DATE_TIME_STR=$(date +'%Y-%m-%d_%H.%M.%S')
CURR_EXEC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#mkdir -p ${CURR_EXEC_DIR}/logs; exec > >(tee ${CURR_EXEC_DIR}/logs/${this_script}_${DATE_TIME_STR}.log) 2>&1
echo "⭐ ============ ${this_script}: ${DATE_TIME_STR} ============"
echo "💲 ./${this_script} $*"


# 1. Raise systemd limits (covers desktop menus, shortcuts, and background services)
mkdir -p /etc/systemd/system.conf.d /etc/systemd/user.conf.d
printf "[Manager]\nDefaultLimitNOFILE=65536:524288\n" > /etc/systemd/system.conf.d/limits.conf
printf "[Manager]\nDefaultLimitNOFILE=65536:524288\n" > /etc/systemd/user.conf.d/limits.conf

# 2. Raise PAM limits for root and all users (covers SSH and login sessions)
mkdir -p /etc/security/limits.d
printf "root soft nofile 65536\nroot hard nofile 524288\n* soft nofile 65536\n* hard nofile 524288\n" > /etc/security/limits.d/99-nofile.conf


echo "@@@@@@@@@@EEEE ${this_script} 👍 EEEE@@@@@@@@@@"