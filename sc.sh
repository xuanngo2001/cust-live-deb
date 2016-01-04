#!/bin/bash
set -e

./sc-reformat-log.sh
./sc-create-parsable-data.sh
./sc-separate-script-data.sh