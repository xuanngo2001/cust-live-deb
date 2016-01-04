#!/bin/bash
set -e
# Description: Directly reformat the install-size-history.txt
#             Legacy format to new format

#gnuplot -e "SYSTEM='Traffic1'" sc-graph-gnuplot.pg

# Set working directory.
WORK_DIR="./tmp-working"
mkdir -p "${WORK_DIR}"
WORK_DIR=$(readlink -ev "${WORK_DIR}")


# Construct plot command.
SYSTEMS=( na min std home work all )
for SYSTEM in "${SYSTEMS[@]}"
do
  
  # Create Exclude command.
  EXCLUDE_LIST=sc-graph-exclude.list
  GREP_EXCLUDE_CMD=$(cat "${EXCLUDE_LIST}" | tr -d ' ' | sed "s/\(.*\)/grep -vF \'\1'|/" | tr -d '\n' | sed 's/|$//')

  # Build plot commands.
  PLOT_CMD="plot"
	  # Find file | Duplicate file name | Reformat title | Remove '.log' from title | Delete newline.
	  FILE_LINE=$(find "${WORK_DIR}" -type f -name "${SYSTEM}_inst*.log" | sort | eval "${GREP_EXCLUDE_CMD}")
	  FILE_LINE=$(echo "${FILE_LINE}" | sed 's/\(.*\)/"\1" using 0:5 title "\1", /' | sed "s/title \".*\/${SYSTEM}_/title \"/" | sed 's/\.log", $/", /' | tr -d '\n' | sed 's/, $//')
	  PLOT_CMD="${PLOT_CMD} ${FILE_LINE}"

	GNUPLOT_PG=sc-graph-gnuplot.pg

	# Processing xtics
	  XTICS_CMD="set xtics"
	  # Ignore comment | Get date and time | sort | uniq | number each line | Swap col1 and col2 | Replace newline with comma | Delete last comma
	  XLABEL_REDEFINED=$(cat "${WORK_DIR}/${SYSTEM}_inst"*.log | cut -d ';' -f 3 | tr -d ' ' | sort | uniq | grep -n '^' | awk -F":" '{ print "\"" $2 "\" " $1}' | tr '\n' ', ' | sed 's/,$//')
	  XTICS_CMD="${XTICS_CMD} (${XLABEL_REDEFINED})"
	  sed -i '/^set xtics (/d' "${GNUPLOT_PG}"
	  echo "${XTICS_CMD}" >> "${GNUPLOT_PG}"

	# Processing plot command.
	  # Delete last plot command.
	  sed -i '/^plot .*/d' "${GNUPLOT_PG}"
	  # Delete the last comma(,) and add plot command.
	  echo "${PLOT_CMD}" | sed 's/,$//' >> "${GNUPLOT_PG}"

    gnuplot -e "SYSTEM='${SYSTEM}'" "${GNUPLOT_PG}"
  
done


