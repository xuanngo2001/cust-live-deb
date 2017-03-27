#!/bin/bash
set -e
# Description: Test func_backup_del_old.
# Debug: . src-init-load.sh ; (cd tests/; ./run.sh); func_backup_del_old tests/test-data/back\ up/test\ delete\ old\ backup_; ll tests/test-data/back\ up/test\ delete\ old\ backup_*


. assert.sh

# Test empty parameter.
  assert_raises "func_backup_del_old" 1

# Test file name with spaces.
  assert_raises "func_backup_del_old file name with spaces" 1
    
# Test delete old backup files.
  # Create test data
  backup_test_data_dir="test-data/back up"
  rm -rf "${backup_test_data_dir}"
  mkdir -p "${backup_test_data_dir}"
  archive_prefix="${backup_test_data_dir}/test delete old backup"
  touch "${archive_prefix}_$(date +%Y-%m-%d).keep.today.tar.bz2"
  touch "${archive_prefix}_$(date --date="-3 days" +%Y-%m-%d).keep.within.this.week.tar.bz2"
  touch "${archive_prefix}_$(date --date="-8 days" +%Y-%m-%d).delete.8days.old.tar.bz2"
  touch "${archive_prefix}_$(date --date="-15 days" +%Y-%m-%d).delete.15days.old.tar.bz2"
  touch "${archive_prefix}_$(date --date="-31 days" +%Y-%m-%d).keep.oldest.tar.bz2"

  # Test delete old backups.
  assert_raises "func_backup_del_old \"${archive_prefix}\" 7" 0
  # Check expected results.
  results=$(find "${backup_test_data_dir}" -name '*.tar.bz2' | grep -F '.keep.' | wc -l)
  if [ "${results}" -ne 3 ]; then
    assert "echo ${results}" "Expect 3 files with name .keep."
  else
    # Clean up
    rm -rf "${backup_test_data_dir}"
  fi
  
  
  rm -rf 
assert_end func_backup_del_old