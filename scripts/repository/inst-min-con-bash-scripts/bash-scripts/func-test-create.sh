#!/bin/bash
set -e
# Description: Create standard function template.

FUNCTION_FILE=$1

# Error handling
  if [ ! -f "${FUNCTION_FILE}" ]; then
    echo "Error: ${FUNCTION_FILE}: no such file. Aborted!"
    exit 1;
  fi
  FUNCTION_FILE=$(readlink -ev "${FUNCTION_FILE}")


# Create test file.
  FUNCTION_NAME=$(basename "${FUNCTION_FILE}")
  TESTS_DIR=$(readlink -ev tests)
  FUNCTION_TEST_FILE="${TESTS_DIR}/test-${FUNCTION_NAME}"
  if [ ! -f "${FUNCTION_TEST_FILE}" ]; then
    
    # Add in run.sh
    echo "" >> "${TESTS_DIR}/run.sh"    
    echo "source ../lib/${FUNCTION_NAME}" >> "${TESTS_DIR}/run.sh"
    echo "./test-${FUNCTION_NAME}" >> "${TESTS_DIR}/run.sh"
        
    # Create function test file.
    FUNCTION_NAME_NO_EXT=$(echo "${FUNCTION_NAME}" | sed 's/.sh$//')
    sed "s/FUNCTION_NAME/${FUNCTION_NAME_NO_EXT}/" "${TESTS_DIR}/template-test.sh" > "${FUNCTION_TEST_FILE}"
    chmod +x "${FUNCTION_TEST_FILE}"
    
    # Display results.         
    echo "Created: ${FUNCTION_TEST_FILE}"
  else
    echo "Warning: "${FUNCTION_TEST_FILE}" already exists. Aborted!"
  fi



