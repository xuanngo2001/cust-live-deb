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
  ./scripts-ls.sh ${system};  yes | cp scripts-ls.lst test-scripts_${system}_${date_str}.txt
done
