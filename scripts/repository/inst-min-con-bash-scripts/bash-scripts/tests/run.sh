#!/bin/bash
set -e
# Description: Run all test scripts here.

# Ensure scripts are executable. Git replaces will remove executable attribute.
chmod +x test-func_*.sh

source ../lib/func_cmd_exists.sh
./test-func_cmd_exists.sh

source ../lib/func_id.sh
./test-func_id.sh

source ../lib/func_link.sh
./test-func_link.sh

source ../lib/func_dir_get_executing_path.sh
./test-func_dir_get_executing_path.sh

source ../lib/func_bashrc_add.sh
./test-func_bashrc_add.sh

source ../lib/func_bashrc_add_path.sh
./test-func_bashrc_add_path.sh

source ../lib/func_backup.sh
./test-func_backup.sh

source ../lib/func_apache_www_link.sh
./test-func_apache_www_link.sh

source ../lib/func_sizeof_kb.sh
./test-func_sizeof_kb.sh
