#!/bin/bash
# Description: Display what are being fetch from the internet.

grep "http://" binary/install.log | grep -v localhost | grep -v "^Hit" | grep -v "^Ign"