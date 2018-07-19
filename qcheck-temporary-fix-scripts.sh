#!/bin/bash
# Description: Check which script has temporary fix.

repository_dir=./scripts/repository/


# Add newline as a separation.
echo ""

while IFS='' read -r filename || [[ -n "${filename}" ]]; do
 
  echo "Warning: Temporary fix found: ${filename}"
  
done < <( find "${repository_dir}" -type f -name "inst-*-fix.sh" )


# Display solution.
echo 'All scripts above should be removed or merged in the official installation script.'


# Add newline as a separation.
echo ""  