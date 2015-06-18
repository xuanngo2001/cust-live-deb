#!/bin/bash
set -e

# Start devmon on startup so that devices are automounted.
#  Note: You need ntfs-3g driver to be able to write on ntfs partition.
/usr/bin/devmon

