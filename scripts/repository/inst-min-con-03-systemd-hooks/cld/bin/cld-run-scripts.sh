#!/bin/bash
set -e
# Description: Run all scripts in bootstrap/ Cust-Live-Deb.

#find /usr/local/cld/bootstrap/ -name '*.sh' -type f -execdir echo "Executing {}" \; -execdir chmod +x {} \; -execdir {} \; 2>&1 | tee -a "${cld_log_dir}/boot-sequence.log" "${cld_log_dir}/$0.log"

script_dir=$1

if [ -z "${script_dir}" ]; then
  echo "Error: script_dir can't be empty. Aborted!" 
  exit 1;
fi

script_dir=$(readlink -ev "${script_dir}")
cld_log_dir=/usr/local/cld/log
while IFS='' read -r script_file || [[ -n "${script_file}" ]]; do
  
  this_script_name=$(basename "${script_file}")
  chmod +x ${script_file}          2>&1 | tee -a "${cld_log_dir}/${this_script_name}.log"
  echo "Executing ${script_file}"  2>&1 | tee -a "${cld_log_dir}/${this_script_name}.log" "${cld_log_dir}/boot-sequence.log"
  (${script_file}                  2>&1 | tee -a "${cld_log_dir}/${this_script_name}.log")&

done < <( find "${script_dir}" -type f -name '*.sh')