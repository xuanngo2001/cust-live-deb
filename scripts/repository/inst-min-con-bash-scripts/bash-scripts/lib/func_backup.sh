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

# Test: XXXX