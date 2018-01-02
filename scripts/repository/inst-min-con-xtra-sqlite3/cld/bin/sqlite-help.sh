#!/bin/bash
set -e
# Description: List helpful commands for sqlite
#   Highlight comment: ./sqlite-help.sh | grep -E '^|#.*'

cat << EndOfSqliteHelp
  # Passing commands to sqlite prompt
  echo -e '.separator "@"\n.import csv_file.csv tablename' | sqlite example.db
  
  # Format table output.
  sqlite3 -cmd ".width 13 15" -column -header example.db "SELECT * tablename;"
  
EndOfSqliteHelp