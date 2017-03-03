#!/bin/bash
set -e
# Description: Update scripts to Cust-Live-Deb

src_dir=$(readlink -ev .)
dest_dir=$(readlink -ev "/media/master/github/cust-live-deb/scripts/repository/inst-min-con-bash-scripts")
rsync -r --exclude=.git "${src_dir}" "${dest_dir}"