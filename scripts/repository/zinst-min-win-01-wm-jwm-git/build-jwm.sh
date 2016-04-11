#!/bin/bash
set -e
# Description: Build JWM from git.

WORK_DIR=./work-jwm

# Create working directory.
mkdir -p "${WORK_DIR}"
WORK_DIR=$(readlink -ev "${WORK_DIR}")

# Get in working directory.
cd "${WORK_DIR}"

PKG_NAME=jwm
apt-get update
apt-get source "${PKG_NAME}"

apt-get -y build-dep "${PKG_NAME}"
