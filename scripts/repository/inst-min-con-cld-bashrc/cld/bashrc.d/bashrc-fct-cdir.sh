# From ..cld-bashrc/

# Get current directory can only be done using shell function.
#   Hence, the function below.
function cdir()
{ 
  local current_directory=$(dirname "$0")                 # relative
  current_directory=$( cd "${current_directory}" && pwd ) # absolutized and normalized
  if [ -z "${current_directory}" ]; then
    # error; for some reason, the path is not accessible
    # to the script (e.g. permissions re-evaled after suid)
    return 1  # fail
  fi
  
  echo "${current_directory}"
  
}  
export -f cdir

