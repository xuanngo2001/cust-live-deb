# Description: XXXX
#   -Depends on: XXXX

function func_apache_www_link()
{ 
  local WEB_ROOT_DIR=$1
  local APACHE_SYMBOLIC_NAME=$2
  
  # Error handling
    if [ $# -ne 2 ]; then
      echo "${FUNCNAME[0]}: Error: Missing arguments. Aborted!"
      echo "   e.g.: ${FUNCNAME[0]}  WEB_ROOT_DIR APACHE_SYMBOLIC_NAME"
      echo "   e.g.: ${FUNCNAME[0]}  /path/to/drupal/ opw"
      return 1;
    fi
    
    if [ ! -d ${WEB_ROOT_DIR} ]; then
      echo "${FUNCNAME[0]}: Error: ${WEB_ROOT_DIR} is not a directory."
      return 1;
    fi
    WEB_ROOT_DIR=$(readlink -ev "${WEB_ROOT_DIR}")

    if [[ ${APACHE_SYMBOLIC_NAME} == *"/"* ]]; then
      echo "${FUNCNAME[0]}: Error: APACHE_SYMBOLIC_NAME: ${APACHE_SYMBOLIC_NAME} can't be a path."
      return 1;
    fi
      
  # Link apache to folder
    APACHE_DIR=/var/www/html/${APACHE_SYMBOLIC_NAME}
    rm -f ${APACHE_DIR}
    ln -s ${WEB_ROOT_DIR} ${APACHE_DIR}
    chown -R www-data:www-data ${WEB_ROOT_DIR}
    chmod -R 755 ${WEB_ROOT_DIR}
  
  # Display symbolic links
    echo "${FUNCNAME[0]}: Linked ${APACHE_SYMBOLIC_NAME} -> ${WEB_ROOT_DIR}"    
}  
export -f func_apache_www_link

# Test: XXXX