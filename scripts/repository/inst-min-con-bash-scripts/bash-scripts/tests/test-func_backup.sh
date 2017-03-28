#!/bin/bash
set -e
# Description: Test func_backup.

. assert.sh

# Test empty parameter.
  assert_raises "func_backup" 1
  
# Test backup files.
  BACKUP_DIR=test-data/backup
  mkdir -p "${BACKUP_DIR}"
  FILE_A="${BACKUP_DIR}/a.txt"
  FILE_B="${BACKUP_DIR}/b.txt"
  echo "a" > "${FILE_A}"
  echo "b" > "${FILE_B}"
  
  BACKUP_RESULT=$(func_backup "${FILE_A}")
  if ! echo "${BACKUP_RESULT}" | grep -q "${FILE_A}_.*.tar.bz2$"; then
    assert_raises "func_backup ${FILE_A}" 1
  fi
  FILE_A_PATH=$(echo "${BACKUP_RESULT}" | cut -d':' -f2 | xargs)
  rm -f "${FILE_A_PATH}"


  rm -f "${FILE_A}"
  rm -f "${FILE_B}"
  rm -rf "${BACKUP_DIR}"
assert_end func_backup