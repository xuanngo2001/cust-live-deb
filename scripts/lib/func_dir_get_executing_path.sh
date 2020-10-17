# Description: Return directory path where this function is called.
#   -Depends on: XXXX

function func_dir_get_executing_path()
{ 
  local EXECUTING_PATH=$(dirname "$0")              # relative
  EXECUTING_PATH=$( cd "${EXECUTING_PATH}" && pwd ) # absolutized and normalized
  if [ -z "${EXECUTING_PATH}" ]; then
    # error; for some reason, the path is not accessible
    # to the script (e.g. permissions re-evaled after suid)
    return 1  # fail
  fi
  
  echo "${EXECUTING_PATH}"  
}  
export -f func_dir_get_executing_path

# TEST:
# cd $HOME
# echo "func_dir_get_executing_path" > /tmp/test_func_dir_get_executing_path
# chmod +x /tmp/test_func_dir_get_executing_path
# /tmp/test_func_dir_get_executing_path
# [Show /tmp]