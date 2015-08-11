#!/bin/bash
set -e

BASE_DIR=./script-size

## Ensure required directories are created.
mkdir -p ${BASE_DIR}/data

## Clean data
# Add separate(,) after script name.
# Add separate(,) after date. Don't retain time.
# Add separate(,) total size.
# Remove K. at the end.
# Clean up scriptname: Remove up to repository/
# Clean up scriptname: Remove up : install.sh/
# Clean up scriptname: Remove ./
cat install-size-history.txt | \
  sed 's/\.sh: /.sh, /' | \
  sed 's/_........: CLDS: . Total size = /, /' | \
  sed 's/K. Space Used = /, /' | \
  sed 's/K.$//' | \
  sed 's/.*repository\///' | \
  sed 's/.*: install.sh/install.sh/' |\
  sed 's/^\.\///' > ${BASE_DIR}/lss-clean.txt
  
## Get script name.
# Remove everything after comma(,).
cat ${BASE_DIR}/lss-clean.txt | \
  sed 's/,.*//g' | \
  sort | uniq > ${BASE_DIR}/lss-uniq-names.txt

## Exclude scripts
cat list-script-size-ex.lst |     # Supply input from a file.
while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
  if [ ! -z ${LINE} ]; then
    echo "Exclude ${LINE}."
    sed -i "/${LINE}/d" ${BASE_DIR}/lss-uniq-names.txt
  fi  
done

## Create data set per script and generate gnuplot script
DATASET_PLOT_CMD=${BASE_DIR}/gnuplot-dataset-cmd.pg
echo -n "plot" > ${DATASET_PLOT_CMD}
cat ${BASE_DIR}/lss-uniq-names.txt |     # Supply input from a file.
while IFS='' read -r SCRIPT_NAME || [[ -n "$LINE" ]]; do
  if [ ! -z ${SCRIPT_NAME} ]; then
  
    # Create data set per script.
    grep "${SCRIPT_NAME}" ${BASE_DIR}/lss-clean.txt > ${BASE_DIR}/data/${SCRIPT_NAME}
    
    # Generate gnuplot script
    echo " \"${BASE_DIR}/data/${SCRIPT_NAME}\" using 2:4 title \"${SCRIPT_NAME}\", \\" >> ${DATASET_PLOT_CMD}
  fi
done


## Plot the graph
# Remove the last ', \'
sed -i '$s/, \\//' ${DATASET_PLOT_CMD}
PLOT_EXE_SCRIPT=list-script-size-exe.pg
cat list-script-size.pg > ${PLOT_EXE_SCRIPT}
cat ${DATASET_PLOT_CMD} >> ${PLOT_EXE_SCRIPT}
chmod +x  ${PLOT_EXE_SCRIPT}
./${PLOT_EXE_SCRIPT}