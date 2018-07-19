#!/bin/bash
# Description: Run all error checking scripts.

echo "qcheck-error-in-log.sh:"
./qcheck-error-in-log.sh

echo "------------------"
echo "qcheck-command-not-found.sh:"
./qcheck-command-not-found.sh

echo "------------------"
echo "qcheck-file-dir-not-found.sh:"
./qcheck-file-dir-not-found.sh

echo "------------------"
echo "qcheck-show-removed-packages.sh:"
./qcheck-show-removed-packages.sh

echo "------------------"
echo "qcheck-jwm-missing-icons.sh:"
./qcheck-jwm-missing-icons.sh

echo "------------------"
echo "qcheck-warning.sh:"
./qcheck-warning.sh

echo "------------------"
echo "qcheck-list-manual-packages.sh:"
./qcheck-list-manual-packages.sh

echo "------------------"
echo "qcheck-temporary-fix-scripts.sh:"
./qcheck-temporary-fix-scripts.sh



