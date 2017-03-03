#!/bin/bash
set -e
# Description: Test func_apache_www_link.

. assert.sh

# Test empty parameter.
  assert_raises "func_apache_www_link"            1
  assert_raises "func_apache_www_link 1parameter" 1
  assert_raises "func_apache_www_link ${HOME} ${HOME}/somepath" 1


# Test link www
  TARGET_NAME=test-data/www/local_drupal
  mkdir -p ${TARGET_NAME}
  LINK_NAME=drupal986523
  echo ${LINK_NAME} > ${TARGET_NAME}/${LINK_NAME}.txt
  
  assert_raises "func_apache_www_link ${TARGET_NAME} ${LINK_NAME}"
  assert "cat /var/www/html/${LINK_NAME}/${LINK_NAME}.txt" "${LINK_NAME}" # Check content from new symbolic link.
  
  rm -f /var/www/html/${LINK_NAME}
  rm -rf test-data/www/
  
assert_end func_apache_www_link