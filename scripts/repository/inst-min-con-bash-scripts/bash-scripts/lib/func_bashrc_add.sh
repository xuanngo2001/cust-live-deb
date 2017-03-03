# Description: XXXX

function func_bashrc_add()
{ 
  local LINE="$1"
  if ! grep -q "${LINE}" ~/.bashrc
  then
    echo "${LINE}" >> ~/.bashrc
    source ~/.bashrc
    echo "~/.bashrc: Added: ${LINE}."
  fi  
}  
export -f func_bashrc_add

# Test: XXXX