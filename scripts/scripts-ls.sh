#!/bin/bash
set -e
# Description: Generate a list of scripts to be executed.
#   Desing: All scripts to less scripts.
# TODO: Is home & work switch for public release?
SCRIPT_NAME=$(basename "$0")

SYSTEM=$1

# Error handling
  if [ -z "${SYSTEM}" ]; then
    echo "${SCRIPT_NAME}: Error: SYSTEM argument missing. e.g.:"
    echo "   ${SCRIPT_NAME} min"
    echo "   ${SCRIPT_NAME} std"
    echo "   ${SCRIPT_NAME} repo"
    echo "   ${SCRIPT_NAME} all"
    exit 1
  fi

# Functtions: All to less
fct_all()
  {
    find $(readlink -ev ./repository/inst-*) -type f -name "inst-*.sh" | sort
  }

fct_work()
  {
    local scripts_list=$(fct_all)
    scripts_list=$(echo "${scripts_list}" | grep -vF 'virtualbox')
    echo "${scripts_list}"
  }

fct_work_no_proxy()
  {
    local scripts_list=$(fct_work)
    scripts_list=$(echo "${scripts_list}" | grep -vF 'proxy')
    echo "${scripts_list}"
  }
  
fct_home()
  {
    local scripts_list=$(fct_all)
    scripts_list=$(echo "${scripts_list}" | grep -vF 'proxy' | grep -vF 'vboxguest')
    echo "${scripts_list}"
  }

fct_home_inspiron()
  {
    local scripts_list=$(fct_home)
    scripts_list=$(echo "${scripts_list}" | grep -vF 'virtualbox')
    scripts_list=$(echo "${scripts_list}" | grep -vF 'games-' | grep -vF 'freecad')
    scripts_list=$(echo "${scripts_list}" | grep -vF 'opw-' | grep -vF 'xtra-php' | grep -vF 'mariadb-server' | grep -vF 'apache2')
    scripts_list=$(echo "${scripts_list}" | grep -vF 'zfs-')
    scripts_list=$(echo "${scripts_list}" | grep -vF 'projectlibre')
    scripts_list=$(echo "${scripts_list}" | grep -vF 'xtra-git')
    scripts_list=$(echo "${scripts_list}" | grep -vF 'graphviz')
    scripts_list=$(echo "${scripts_list}" | grep -vF 'tools-ant')
    scripts_list=$(echo "${scripts_list}" | grep -vF 'tools-pandoc')
    echo "${scripts_list}"
  }

fct_std_xtra()
  {
    local scripts_list=$(fct_home)
    scripts_list=$(echo "${scripts_list}" | grep -vF 'inst-xtra-')
    echo "${scripts_list}"
  }
  
fct_std()
  {
    # Clean standard packages. No -xtra-, not even on the -min- level.
    local scripts_list=$(fct_std_xtra)
    scripts_list=$(echo "${scripts_list}" | grep -v '\-xtra-')
    echo "${scripts_list}"
  }  

fct_min_xtra()
  {
    local scripts_list=$(fct_std_xtra)
    scripts_list=$(echo "${scripts_list}" | grep -v 'inst-std-')
    echo "${scripts_list}"
  }
  
fct_min()
  {
    # Clean minimum packages. No -xtra-.
    local scripts_list=$(fct_std)
    scripts_list=$(echo "${scripts_list}" | grep -v 'inst-std-')
    echo "${scripts_list}"
  }    

# Convert input to lowercase
SYSTEM=$(echo $1 | tr '[[:upper:]]' '[[:lower:]]')

# Generate script-ls.lst
########################
SCRIPT_LIST=scripts-ls.lst


# Clear scripts-ls.lst
cat /dev/null > ${SCRIPT_LIST}

case "${SYSTEM}" in
  
  # Minimum system with X window.
	min_xtra)
    fct_min_xtra > ${SCRIPT_LIST}
	  ;;

  # Minimum system with X window.
  min)
    fct_min > ${SCRIPT_LIST}
    ;;

  # Standard system for the general public. Strict minimum with common applications.
  std_xtra)
    fct_std_xtra > ${SCRIPT_LIST}
     
    ;;
  # Standard system for the general public. Strict minimum with common applications.
  std)
    fct_std > ${SCRIPT_LIST}
     
    ;;

  # Most of applications but no proxy settings and no virtualbox. 
  home)
    fct_home > ${SCRIPT_LIST}
    ;;

  # Most of applications but no proxy settings and no virtualbox ++ for Inspiron laptop
  home_inspiron)
    fct_home_inspiron > ${SCRIPT_LIST}
    ;;

  # Most of applications + proxy settings.  
	work)
    fct_work > ${SCRIPT_LIST}
	  ;;

  # Most of applications but without proxy settings.  
  work_no_proxy)
    fct_work_no_proxy > ${SCRIPT_LIST}
    ;;
    
  # All install scripts in the repository.  
  all)
    fct_all > ${SCRIPT_LIST}
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


# Sanity check: sort | uniq
##########################
sort -u ${SCRIPT_LIST} -o ${SCRIPT_LIST}


echo "${SCRIPT_NAME}: List of script names added in ${SCRIPT_LIST} for [${SYSTEM}] system."