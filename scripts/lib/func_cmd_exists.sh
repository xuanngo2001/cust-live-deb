# Description: Check whether command exists.
#   -Depends on: XXXX

function func_cmd_exists()
{ 
  # Check whether application is installed.
  local CMD_NAME=$1
  command -v "${CMD_NAME}" >/dev/null 2>&1 || { echo >&2 "Error: ${CMD_NAME} not found: Aborted!"; return 1; }
}  
export -f func_cmd_exists

# Test: XXXX