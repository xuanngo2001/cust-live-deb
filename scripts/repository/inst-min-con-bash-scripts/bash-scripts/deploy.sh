#!/bin/bash
set -e
# Description: Deploy

LIB_DIR=$(readlink -ev ./lib)

SCRIPTS_DIR=${HOME}/bash-scripts
mkdir -p "${SCRIPTS_DIR}"
SCRIPTS_DIR=$(readlink -ev "${SCRIPTS_DIR}")

# Copy to target destination directory.
  yes | cp -av ${LIB_DIR}/* "${SCRIPTS_DIR}"

# Add in .bashrc
  while IFS='' read -r LINE || [[ -n "${LINE}" ]]; do
    echo "source \"${LINE}\"" >> ${HOME}/.bashrc
  done < <( find "${SCRIPTS_DIR}" -type f -name '*.sh')

# Display what to do next.
echo "###########################"
echo "To use now, run: source ${HOME}/.bashrc"