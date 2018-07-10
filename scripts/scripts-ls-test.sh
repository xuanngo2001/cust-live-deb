#!/bin/bash
set -e
# Description: Keep track of list of scripts for each system.

date_str=$(date +"%Y-%m-%d.%0k.%M.%S")

systems=( min min_xtra )
systems+=( std std_xtra )
systems+=( home home_inspiron )
systems+=( work work_no_proxy )
systems+=( all )
for system in "${systems[@]}"
do
  test_output_filename=test-scripts_${system}_${date_str}.txt
  ./scripts-ls.sh ${system};  yes | cp scripts-ls.lst "${test_output_filename}"
  
  # Remove parent directories up to .../scripts/repository/
    sed -i 's|.*/scripts/repository/||' "${test_output_filename}"
  
  # if diff than test-scripts_*_2000-01-01.00.00.00.txt, then create new scripts-ls.lst.
    if cmp -s "test-scripts_${system}_2000-01-01.00.00.00.txt" "${test_output_filename}"; then
      rm "${test_output_filename}"
    fi
  
done


