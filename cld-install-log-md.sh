#!/bin/bash
# Description: Extract chroot/root/scripts/install.log.ran and put logged info in README.md
#   Script name will be the root level list.
#   Logged line in script will be nested to the root level ist.

INSTALL_LOG=$1
INSTALL_LOG=./binary/install.log

# Error handling
  if [ ! -f "${INSTALL_LOG}" ]; then echo "Error: Install log file: ${INSTALL_LOG}: no such file. Aborted!"; exit 1; fi;

INSTALL_LOG=$(readlink -ev "${INSTALL_LOG}")

# Duplicate install log.
	INSTALL_LOG_CLEAN=${INSTALL_LOG}.clean
	yes | cp -v "${INSTALL_LOG}" "${INSTALL_LOG_CLEAN}"

# Process the install log.
  # Indent all lines
  grep -v '^Get:' "${INSTALL_LOG_CLEAN}"