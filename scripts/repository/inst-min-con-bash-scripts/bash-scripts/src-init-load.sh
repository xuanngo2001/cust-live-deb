#!/bin/bash
#set -e # Don't enable this statement. Otherwise, command not found will close the terminal.
# Description: Load all *.sh from source lib/

#LIB_DIR=$(readlink -ev ./lib)
#source <(cat ${LIB_DIR}/*.sh) # Cause an error to close current shell.
#find "${LIB_DIR}" -maxdepth 1 -name 'func_*.sh' -execdir echo "sourced ${LIB_DIR}/{}" \; -execdir /bin/bash -c "source ${LIB_DIR}/{}" \; 

source lib/func_apache_www_link.sh
source lib/func_backup.sh
source lib/func_bashrc_add_path.sh
source lib/func_bashrc_add.sh
source lib/func_cmd_exists.sh
source lib/func_dir_get_executing_path.sh
source lib/func_id.sh
source lib/func_link.sh
source lib/func_sizeof_kb.sh