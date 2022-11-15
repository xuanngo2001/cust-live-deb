# Description: Return identifier.
#   -Depends on: XXXX

function func_id()
{ 

  local type=$1
  type=$( echo "${type}" | tr '[:upper:]' '[:lower:]' )

  local id=""
  local time_str=$(date '+%H:%M:%S')
  local hours=$(echo $time_str | cut -d':' -f1 | sed 's/^0//')
  local minutes=$(echo $time_str | cut -d':' -f2 | sed 's/^0//')
  local seconds=$(echo $time_str | cut -d':' -f3 | sed 's/^0//')
  local seconds_since_midnight=""
  seconds_since_midnight=$(( ($hours*60 + $minutes)*60 + $seconds ))
  seconds_since_midnight=$(printf "%05d" ${seconds_since_midnight})  
    
  case "${type}" in
      sec-short)
        id=$(date +"%Y%m%d.")${seconds_since_midnight}
        ;;
      sec-medium)
        id=$(date +"%Y-%m-%d.")${seconds_since_midnight}
        ;;
      sec-long)
        id=$(date +"%Y-%m-%d.%0k.%M.%S")
        ;;
      sec-full)
        id=$(date +"%Y%m%d%0k%M%S")
        ;;
      *)
        echo "Error: unknown ${type} type. Aborted!"
        echo " Run func_id_options for all available types."
        return 1;
  esac
  
  echo "${id}" 
}  
export -f func_id


function func_id_options()
{ 
  local types=(sec-short sec-medium sec-long)
  types+=(sec-full)
  
  printf "%-10s  %-6s %-25s\n" 'Type' 'Length' 'Output'
  echo "============================="
  for type in "${types[@]}"
  do
    id_result=$( func_id "${type}")
    printf "%-10s  %-6s %-25s\n" "${type}" "${#id_result}" "${id_result}" 
  done  
}  
export -f func_id_options

# Test: XXXX