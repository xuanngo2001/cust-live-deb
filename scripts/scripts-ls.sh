#!/bin/bash
set -e

# Description: Generate a list of scripts to be executed.

SYSTEM=$1

# Error handling
###################
if [ -z "${SYSTEM}" ]; then
  echo "ERROR: SYSTEM argument missing. e.g.:"
  echo "   $0  min"
  echo "   $0  home"
  exit 0
fi

# Convert input to lowercase
SYSTEM=$(echo $1 | tr '[[:upper:]]' '[[:lower:]]')

# Generate script-ls.lst
########################
SCRIPT_LIST_ALL=scripts-ls.all
SCRIPT_LIST=scripts-ls.lst
# Put all scripts in script list file. Then filter later on.
find ./ -type f -name "inst-*.sh" | sort > ${SCRIPT_LIST_ALL}
# Remove not-used scripts
sed -i '/not-used/d' ${SCRIPT_LIST_ALL}
# Clear scripts-ls.lst
cat /dev/null > ${SCRIPT_LIST}

case "${SYSTEM}" in
  
  # Minimum system with X window.
	min)
    # Add inst-min-con- | Add inst-min-win-
    grep 'inst-min-con-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    grep 'inst-min-win-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    
    # No proxy
    sed -i '/proxy/d' ${SCRIPT_LIST}
	  ;;

  # Standard system for the general public. Strict minimum with common applications.
  std)
    # Add inst-min-con- | Add inst-min-win-
    grep 'inst-min-con-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    grep 'inst-min-win-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    
    # Add inst-std-
    grep 'inst-std-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    
    # No proxy
    sed -i '/proxy/d' ${SCRIPT_LIST}
    ;;
    
  home)
    # Add inst-min-con- | Add inst-min-win-
    grep 'inst-min-con-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    grep 'inst-min-win-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    
    # Add inst-std-
    grep 'inst-std-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}

    # Add inst-min-xtra- | Add inst-xtra-
    grep 'inst-min-xtra-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    grep 'inst-xtra-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}

    # No proxy
    sed -i '/proxy/d' ${SCRIPT_LIST}
    # No virtualbox
    sed -i '/virtualbox/d' ${SCRIPT_LIST}
    ;;
				
  # All  
	work)
    grep -E 'inst-[min|std|xtra]' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
	  ;;
	  
	*)
	  echo "ERROR: Unknown SYSTEM=>${SYSTEM}"
	  exit 1
	  ;;
esac

# Add clean up scripts.
grep 'inst-zclean-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}

# Sanity check: sort | uniq
##########################
sort -u ${SCRIPT_LIST} -o ${SCRIPT_LIST}


    
echo "List of scripts generated in ${SCRIPT_LIST} for ${SYSTEM}."