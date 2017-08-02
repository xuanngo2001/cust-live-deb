#!/bin/bash
set -e
# Description: List dependent package.
# Why?: Aptly doesn't automatically get all dependent packages, especially cross component.

PACKAGE_NAME=$1

# Error Handling
  if [ -z "${PACKAGE_NAME}" ]; then
    echo "Error: Package name is required. Aborted!"
    echo "   e.g. $0 <PACKAGE_NAME>"
    exit 1;
  fi
  
# Get list of dependent packages.
DEPENDENT_PACKAGES=$(apt-cache depends "${PACKAGE_NAME}")

  # Remove suggest packages.
  DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | grep -vF '  Suggests: ' )

  # Remove the 1st line: It is the package name.
  DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | tail -n +2 )
  
  # Remove '  Depends: '
  DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | sed 's/  Depends: //' | sed 's/ |Depends: //')

  # Remove spaces
  DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | sed 's/    //')
  
  # Remove ':any>'
  DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | sed 's/:any>//')

  # Remove '<'
  DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | sed 's/<//')

  # Remove '>'
  DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | sed 's/>//')

  # Remove duplicates.
  DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | sort | uniq)
  

# Write command to download dependent packages.
DEPENDENT_PACKAGES=$(echo "${DEPENDENT_PACKAGES}" | sed 's/^/apt-get -d -y install /')  

# Add comment to commands.
DEPENDENT_PACKAGES=$'# Explicitly download dependent packages.\n'${DEPENDENT_PACKAGES}


# Display results.
echo "${DEPENDENT_PACKAGES}"