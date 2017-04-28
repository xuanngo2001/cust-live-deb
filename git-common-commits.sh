#!/bin/bash
set -e
# Description: Commit common files that are change constantly.

# Commit files that were deleted.
  git ls-files --deleted -z | xargs -0 git rm | git commit -m 'Deleted files manually' || true
  
# binary/**
  find binary/ -type f -name '*.log' -exec git add '{}' + -exec git commit -m '*.sh.log' {} +         || true

# scripts/repository/**
  find scripts/repository/ -type f -name '*.sh.log' -exec git add '{}' + -exec git commit -m 'update *.sh.log' {} +         || true
  find scripts/repository/ -type f -name '*.sh.log.md' -exec git add '{}' + -exec git commit -m 'update *.sh.log.md' {} +   || true

# Commit individual files
  files_to_commit=(build-elapsed.txt)
  files_to_commit+=(install-size-history.txt)
  files_to_commit+=(sizes.log)
  
  for file_2_commit in "${files_to_commit[@]}"
  do
    git add "${file_2_commit}" && git commit -m "${file_2_commit}" "${file_2_commit}" || true
  done