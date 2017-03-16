#!/bin/bash
set -e
# Description: Commands that will run on JWM startup.

#find /usr/local/cld/app/jwm/bootstrap/ -name '*.sh' -type f -execdir echo "Executing {}" \; -execdir chmod +x {} \; -execdir {} \; 2>&1 | tee -a "${CLD_LOG_DIR}/boot-sequence.log" "${CLD_LOG_DIR}/$0.log"

script_dir=/usr/local/cld/app/jwm/bootstrap
script_dir=$(readlink -ev "${script_dir}")
while IFS='' read -r script_file || [[ -n "${script_file}" ]]; do

  this_script_name=$(basename $0)
  chmod +x ${script_file}          2>&1 | tee -a "${CLD_LOG_DIR}/${this_script_name}.log"
  echo "Executing ${script_file}"  2>&1 | tee -a "${CLD_LOG_DIR}/${this_script_name}.log" "${CLD_LOG_DIR}/boot-sequence.log"
  (${script_file}                  2>&1 | tee -a "${CLD_LOG_DIR}/${this_script_name}.log")&

done < <( find "${script_dir}" -type f -name '*.sh')