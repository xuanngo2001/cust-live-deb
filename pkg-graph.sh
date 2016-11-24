#!/bin/bash
# Description: Generate Debian package graph.

SCRIPTS_DIR=$1


# Error handling
  if [ ! -d "${SCRIPTS_DIR}" ]; then echo "Error: scripts/ directory: ${SCRIPTS_DIR}: no such directory. Aborted!"; exit 1; fi;
  
SCRIPTS_DIR=$(readlink -ev "${SCRIPTS_DIR}")

DOT_FILENAME=pkg-graph.dot

# Add beginning graph statement.
cat pkg-graph-start.txt > "${DOT_FILENAME}"


# Processing .sh.log.deb files.
while IFS='' read -r DEB_FILE || [[ -n "$DEB_FILE" ]]; do
  
  SCRIPT_NODE_LABEL=$(basename $(dirname $(readlink -ev "${DEB_FILE}" )))
  SCRIPT_NODE_NAME=$(echo "${SCRIPT_NODE_LABEL}" | sed 's/-/_/g')
  SCRIPT_NODE_NAME=$(echo "${SCRIPT_NODE_NAME}" | sed 's/+/_/g')
  
  DEB_PACKAGES=$(cat "${DEB_FILE}" | tr ' ' '\n') # Replace space with newline.
  DEB_PACKAGES=$(echo "${DEB_PACKAGES}" | awk NF) # Remove empty line.
  
  DOT_PACKAGES_LINK=$(echo "${DEB_PACKAGES}" | sed 's/-/_/g') # Replace - with _
  DOT_PACKAGES_LINK=$(echo "${DOT_PACKAGES_LINK}" | sed 's/\./_/g') # Replace . with _
  DOT_PACKAGES_LINK=$(echo "${DOT_PACKAGES_LINK}" | sed 's/+/_/g') # Replace + with _
  DOT_PACKAGES_LINK=$(echo "${DOT_PACKAGES_LINK}" | sed "s/$/ -- ${SCRIPT_NODE_NAME};/g") # Define edge.
  
  # Redirect results to dot file.
  echo "${DOT_PACKAGES_LINK}" >> "${DOT_FILENAME}"
  echo "" >> "${DOT_FILENAME}"
  
done < <( find "${SCRIPTS_DIR}" -type f -name "*.sh.log.deb" | sort )

# Add ending graph statement.
cat pkg-graph-end.txt >> "${DOT_FILENAME}"

# Generate dot output.
neato -Tpng -o "${DOT_FILENAME}.neato.png" "${DOT_FILENAME}"
	#dot -Tpng -o "${DOT_FILENAME}.png" "${DOT_FILENAME}"
	#dot -Tsvg -o "${DOT_FILENAME}.svg" "${DOT_FILENAME}"
	#twopi -Tsvg -o "${DOT_FILENAME}.twopi.svg" "${DOT_FILENAME}"
	#circo -Tsvg -o "${DOT_FILENAME}.circo.svg" "${DOT_FILENAME}"
