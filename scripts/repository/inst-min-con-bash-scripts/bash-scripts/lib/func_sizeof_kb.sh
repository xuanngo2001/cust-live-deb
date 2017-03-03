# Description: Return size of file or directory in kilobytes
#   -Depends on: XXXX

function func_sizeof_kb()
{ 
  if [ -f $1 ] || [ -d $1 ]; then
    echo $(du -sk --exclude=/proc $1 | head -n 1 | cut -f1)
  else
    echo "${FUNCNAME[0]}: Error: $1: no such file or directory. Aborted!"
    return 1;
  fi    
}  
export -f func_sizeof_kb
