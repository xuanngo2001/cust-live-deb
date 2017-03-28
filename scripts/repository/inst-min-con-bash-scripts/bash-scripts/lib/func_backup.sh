# Description: Backup TARGET_DIR path
#   -Depends on: func_id.sh

function func_backup()
{
  local TARGET_DIR=$1
  if [ ! -e "${TARGET_DIR}" ]; then
    echo "Error: ${TARGET_DIR}: no such file or directory. Aborted!"
    echo "  $0 FILE_OR_DIRECTORY"
    return 1;
  fi
  TARGET_DIR=$(readlink -ev "${TARGET_DIR}")
  
  # Backup
  local DATE_STRING=$(func_id sec-medium)
  local INPUT_BASE_DIR="$(dirname "${TARGET_DIR}")"
  local INPUT="$(basename "${TARGET_DIR}")"
  local OUTPUT_ARCHIVE="${INPUT_BASE_DIR}/${INPUT}_${DATE_STRING}.tar.bz2"
  
  tar -jcf "${OUTPUT_ARCHIVE}" -C "${INPUT_BASE_DIR}" "${INPUT}"
  # List content: tar -tvf archive.tar.bz2
  # Extract content: tar -xvjf archive.tar.bz2
  
  echo "Backup to: ${OUTPUT_ARCHIVE}"
}  
export -f func_backup


function func_backup_del_old()
{
  local archive_prefix=$1
  local del_after_days=$2

  if [ "$#" -ne 2 ]; then
    echo "Error: Only 2 arguments are allowed. Currently, there are $#($@).Aborted!"
    echo "  ${FUNCNAME[0]} archive_ days"
    return 1;
  fi    
  if [ -z "${archive_prefix}" ]; then 
    echo "Error: ${archive_prefix}: Archive prefix can't be empty. Aborted!"
    echo "  ${FUNCNAME[0]} archive_ days"
    return 1;
  fi
  is_number_regex='^[0-9]+$'
  if ! [[ "${del_after_days}" =~ ${is_number_regex} ]] ; then
    echo "Error: ${del_after_days} is not a number. Aborted!" >&2
    echo "  ${FUNCNAME[0]} archive_ days"
    return 1;
  fi  
  
  local archive_list=$(ls -1 "${archive_prefix}"*????-??-??.*.tar.bz2 | sort -r)
  if [ -z "${archive_list}" ]; then echo "Nothing to delete!001"; return 0; fi

  archive_list=$(echo "${archive_list}" | tail -n +2 ) # Remove first line
  archive_list=$(echo "${archive_list}" | head -n -1 ) # Remove last line

  if [ -z "${archive_list}" ]; then echo "Nothing to delete!002"; return 0; fi

  #echo "${archive_list}"
  
  local counter=0
  while [ $counter -lt ${del_after_days} ]; do
    local day_exclude=$(date --date="-${counter} days" +%Y-%m-%d)
    archive_list=$(echo "${archive_list}" | grep -vF "${day_exclude}" || true) # || true because it will exit if 'set -e' is set.
    counter=$[$counter+1]
  done  
  
  if [ -z "${archive_list}" ]; then
    echo "Nothing to delete!"
  else
    echo "Deleting: "
    echo "${archive_list}" | sed 's/^/  /'
    echo "${archive_list}"| tr \\n \\0 | xargs -0 -n1 rm -f
  fi

}  
export -f func_backup_del_old