#!/bin/bash
set -e
# Description: Directly reformat the install-size-history.txt
#             Legacy format to new format

SCRIPT_LOG=install-size-history.txt
SCRIPT_LOG=$(readlink -ev "${SCRIPT_LOG}")

# Use ; as separator.
  sed -i 's/.sh: /.sh; /'     "${SCRIPT_LOG}"
  sed -i 's/: CLDS:/; CLDS:/' "${SCRIPT_LOG}"
  
# Remove script path
  sed -i 's/\/.*\///'         "${SCRIPT_LOG}"
  sed -i 's/^\.inst/inst/'    "${SCRIPT_LOG}"
  sed -i 's/^\.\/inst/inst/'  "${SCRIPT_LOG}"

# Prefix 'na' when the system is not logged.
  sed -i 's/^inst/na; inst/'     "${SCRIPT_LOG}"

# Separate system and script name
  sed -i 's/: inst/; inst/'     "${SCRIPT_LOG}"
  sed -i 's/: .inst/; inst/'     "${SCRIPT_LOG}"
  sed -i 's/: main/; main/'     "${SCRIPT_LOG}"

# SPECIAL cases
  sed -i 's/work-apt-move: //'     "${SCRIPT_LOG}"