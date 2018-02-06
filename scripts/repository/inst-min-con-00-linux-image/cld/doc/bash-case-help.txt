#!/bin/bash
set -e
# Description: List helpful commands for bashCase.
#   Note: bashCase-help.sh is in this dir because of mbashCase.
#   Highlight comment: ./bashCase-help.sh | grep -E '^|#.*'

cat << EndOfBashCaseHelp
  # Basic case.
  case "${option}" in
    
    option-value | ov )
      # Commands here for the option-value or ov.
      echo "[${option}]"
      ;;
    *)
      echo "$0: Error: Unknown option=>${option}"
      exit 1
      ;;
  esac
  
EndOfBashCaseHelp