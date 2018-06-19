#!/bin/bash
### Description: List all modules with their names.
#  Note: from ../inst-min-con-cld-tools/cld/bin
 
# list modules | remove spaces | take 1st column | exclude 1st line, Module
for module in $(lsmod | tr -s ' ' | cut -d ' ' -f1 | grep -v ^Module)
do
  # Filter description: line | remove spaces | remove description:
  echo "${module}: $(modinfo ${module} | grep 'description:' | tr -s ' ' | sed 's/description://')"
done


# Check network card: lspci -knn | grep -EiA2 'net'