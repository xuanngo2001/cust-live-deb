#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

script_list=()
zerosizing_dir=$(readlink -ev './zerosizing.d')
while IFS='' read -r zero_script || [[ -n "$zero_script" ]]; do

  chmod +x ${zero_script}
  "${zero_script}"
  script_list+=( $(basename "${zero_script}") )
done < <( find "${zerosizing_dir}" -type f -name '*_zero.sh' )

# Log
echo "${GV_LOG} * Zero size using the following scripts:"
echo "${GV_LOG} * ${script_list[@]}"