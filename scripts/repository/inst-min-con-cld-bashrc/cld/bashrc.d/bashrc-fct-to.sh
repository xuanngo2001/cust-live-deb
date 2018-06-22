
# Changing current directory can only be done using shell function.
#   Hence, the function below.
function to()
{ 
  local destination=$1
  
  # Error handling.
    if [ -z "${destination}" ]; then
      echo "Error: ${destination} can't be empty. Aborted!"
      return 1;
    fi
    
    # Remove the last slash(/) due to excessive TABbing.
    destination=$(echo "${destination}" | sed 's|/$||')
    
    if [ ! -L "${destination}" ]; then
      echo "Error: ${destination} is not a symbolic link. Aborted!"
      return 1;
    fi
    
  # Get full path.
    destination=$(readlink -ev "${destination}")
    
  # Go to full path.
    if [ -d "${destination}" ]; then
      cd "${destination}"
    else
      echo "Error: ${destination} is not a directory. Aborted!"
      return 1;
    fi
}  
export -f to

