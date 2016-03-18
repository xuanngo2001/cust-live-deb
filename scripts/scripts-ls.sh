#!/bin/bash
set -e
# Description: Generate a list of scripts to be executed.
# TODO: Is home & work switch for public release?
SCRIPT_NAME=$(basename "$0")

SYSTEM=$1

# Error handling
###################
if [ -z "${SYSTEM}" ]; then
  echo "${SCRIPT_NAME}: Error: SYSTEM argument missing. e.g.:"
  echo "   ${SCRIPT_NAME} min"
  echo "   ${SCRIPT_NAME} std"
  echo "   ${SCRIPT_NAME} all"
  exit 0
fi

# Convert input to lowercase
SYSTEM=$(echo $1 | tr '[[:upper:]]' '[[:lower:]]')

# Generate script-ls.lst
########################
SCRIPT_LIST_ALL=scripts-ls.all
SCRIPT_LIST=scripts-ls.lst

# Put all scripts in ${SCRIPT_LIST_ALL}. Then filter later on as needed.
find $(readlink -ev ./repository/inst-*) -type f -name "inst-*.sh" | sort > ${SCRIPT_LIST_ALL}

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
    
    # No proxy settings
    sed -i '/proxy/d' ${SCRIPT_LIST}
    
    # No extra
    sed -i '/-xtra-/d' ${SCRIPT_LIST}
	  ;;

  # Standard system for the general public. Strict minimum with common applications.
  std)
    # Add inst-min-con- | Add inst-min-win-
    grep 'inst-min-con-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    grep 'inst-min-win-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    
    # Add inst-std-
    grep 'inst-std-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    
    # No proxy settings
    sed -i '/proxy/d' ${SCRIPT_LIST}

    # No extra
    sed -i '/-xtra-/d' ${SCRIPT_LIST}
    ;;

  # Most of applications but no proxy settings and no virtualbox. 
  home)
    grep -E 'inst-[min|std|xtra]' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}

    # No proxy settings
    sed -i '/proxy/d' ${SCRIPT_LIST}
    # No virtualbox
    #sed -i '/virtualbox/d' ${SCRIPT_LIST}
    ;;
				
  # Most of applications + proxy settings.  
	work)
    grep -E 'inst-[min|std|xtra]' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
	  ;;

  # All install scripts in the repository.  
  all)
    grep -v 'inst-zclean-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}
    ;;
	  	  
	*)
	  echo "${SCRIPT_NAME}: Error: Unknown SYSTEM=>${SYSTEM}"
	  exit 1
	  ;;
esac

# Exclude scripts
#   scripts-ex.lst: Don't put absolute path because chroot/ path is different.
#                   Put relative path to scripts/
SCRIPT_LIST_CONTENT=$(cat "${SCRIPT_LIST}")
while IFS='' read -r LINE || [[ -n "${LINE}" ]]; do
  # Delete line match ${LINE}. Note: sed can't process string as literal. https://bbs.archlinux.org/viewtopic.php?id=172968
  SCRIPT_LIST_CONTENT=$(echo "${SCRIPT_LIST_CONTENT}" | grep -Fv "${LINE}")
  echo "${SCRIPT_NAME}: Excluded ${LINE}."
done < <(cat scripts-ex.lst | grep -v "^#"  | awk NF) # Ignore comment line | Remove empty line
echo "${SCRIPT_LIST_CONTENT}" > "${SCRIPT_LIST}"

# Add clean up scripts.
grep 'inst-zclean-' ${SCRIPT_LIST_ALL} >> ${SCRIPT_LIST}

# Sanity check: sort | uniq
##########################
sort -u ${SCRIPT_LIST} -o ${SCRIPT_LIST}


echo "${SCRIPT_NAME}: List of script names added in ${SCRIPT_LIST} for [${SYSTEM}] system."