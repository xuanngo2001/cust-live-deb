#!/bin/bash
set -e
# Description: Keep track of list of scripts for each system.

date_str=$(date +"%Y-%m-%d.%0k.%M.%S")

system=min
./scripts-ls.sh ${system};  yes | cp scripts-ls.lst test-scripts_${system}_${date_str}.txt

system=std
./scripts-ls.sh ${system};  yes | cp scripts-ls.lst test-scripts_${system}_${date_str}.txt

system=home
./scripts-ls.sh ${system};  yes | cp scripts-ls.lst test-scripts_${system}_${date_str}.txt

system=home_inspiron
./scripts-ls.sh ${system};  yes | cp scripts-ls.lst test-scripts_${system}_${date_str}.txt

system=work
./scripts-ls.sh ${system};  yes | cp scripts-ls.lst test-scripts_${system}_${date_str}.txt
