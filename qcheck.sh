#!/bin/bash
# Description: Run all error checking scripts.

echo "qcheck-error-in-log.sh:"
./qcheck-error-in-log.sh

echo "------------------"
echo "qcheck-show-removed-packages.sh:"
./qcheck-show-removed-packages.sh

echo "------------------"
echo "qcheck-jwm-missing-icons.sh:"
./qcheck-jwm-missing-icons.sh

echo "------------------"
echo "qcheck-warning.sh:"
./qcheck-warning.sh