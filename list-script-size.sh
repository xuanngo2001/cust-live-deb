BASE_DIR=./script-size

## Ensure required directories are created.
mkdir -p ${BASE_DIR}/data

#cat install-size-history.txt | grep -vE 'zclean|end|Used = 0K' | \
#  sed 's/^.*repository\///' | sed 's/sh: .* Used = /sh,/' | sed 's/K.$//' | sed 's/.*: install/install/' | sed 's/\.\/inst-/inst-/' > list-script-size.txt

#sort -t"," -k2n list-script-size.txt | uniq

# If some argument is provided, then don't regenerate ${BASE_DIR}/gnuplot-dataset-cmd.pg.
DATASET_PLOT_CMD=${BASE_DIR}/gnuplot-dataset-cmd.pg
if [ -z $1 ]; then

  ## Clean data
  # Ignore 'zclean|end|Used = 0K'
  # Add separate(,) after script name.
  # Add separate(,) after date. Don't retain time.
  # Add separate(,) total size.
  # Remove K. at the end.
  # Clean up scriptname: Remove up to repository/
  # Clean up scriptname: Remove up : install.sh/
  # Clean up scriptname: Remove ./
  cat install-size-history.txt | grep -vE 'zclean|end|Used = 0K' | \
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

  ## Create data set per script and generate gnuplot script
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

fi

## Plot the graph
# Remove the last ', \'
sed -i '$s/, \\//' ${DATASET_PLOT_CMD}
PLOT_EXE_SCRIPT=list-script-size-ex.pg
cat list-script-size.pg > ${PLOT_EXE_SCRIPT}
cat ${DATASET_PLOT_CMD} >> ${PLOT_EXE_SCRIPT}
chmod +x  ${PLOT_EXE_SCRIPT}
./${PLOT_EXE_SCRIPT}